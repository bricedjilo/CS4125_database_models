package com.finalproject.utility;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

@Component("factories")
public class Factories {

	public Factories() {
	}

	public Map<String, String> mapFactory(ResultSet rs, final String... strings) throws SQLException {
		Map<String, String> map = new HashMap<String, String>();
		for (String string : strings) {
			map.put(string, String.valueOf(rs.getString(string)));
		}
		return map;
	}

	public StringBuilder surroundWithPercent(String param) {
		return (new StringBuilder("%")).append(param.toLowerCase().trim()).append("%");
	}

	public List<Map<String, String>> daoBoilerPlate(NamedParameterJdbcTemplate jdbc, 
			String sql, MapSqlParameterSource params, final String...resultColumns) throws SQLException {
		if(params == null) {
			return jdbc.query(sql, new RowMapper<Map<String, String>>() {
				@Override
				public Map<String, String> mapRow(ResultSet rs, int rowNum) throws SQLException {
					return mapFactory(rs, resultColumns);
				}
			});
		}
		return jdbc.query(sql, params, new RowMapper<Map<String, String>>() {
			@Override
			public Map<String, String> mapRow(ResultSet rs, int rowNum) throws SQLException {
				return mapFactory(rs, resultColumns);
			}
		});
	}

}
