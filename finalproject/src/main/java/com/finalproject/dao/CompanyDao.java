package com.finalproject.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.finalproject.utility.Factories;

@Component("companyDao")
public class CompanyDao {

	private NamedParameterJdbcTemplate jdbc;
	private Factories factories;

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	
	@Autowired
	public void setFactories(Factories factories) {
		this.factories = new Factories();
	}

	// List all companies and their info
	public List<Map<String, String>> getAllCompanies() {
		return jdbc.query(
				"select * from companyAddress natural join company natural join speciality order by name",
				new RowMapper<Map<String,String>>() {
					@Override
					public Map<String, String> mapRow(ResultSet rs, int rowNum) throws SQLException {
						return factories.mapFactory(rs, "comp_id","name","primary_sector", 
								"website","street","city","zip_code","speciality_name");
					}
				});
	}
	
	// Query 3; companies' labor cost
	public List<Map<String, String>> getCompaniesLaborCost() {
		return jdbc.query(
				"select name, sum(wages) as laborCost from (select name, "
						+ "(case pay_type when 'wage' then pay_rate*1920 else pay_rate end) as wages "
						+ "from (select * from company natural join jobs natural join works) t) " + "group by name",
				new RowMapper<Map<String,String>>() {
					@Override
					public Map<String, String> mapRow(ResultSet rs, int rowNum) throws SQLException {
						return factories.mapFactory(rs, "name", "laborCost");
					}
				});
	}

	// Query 3.1; A company's labor cost
	public List<Map<String, String>> getCompanysLaborCost(String companyName) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("companyName", companyName);
		return jdbc.query(
				"select name, sum(wages) as laborCost from (select name, "
						+ "(case pay_type when 'wage' then pay_rate*1920 else pay_rate end) as wages "
						+ "from (select * from company natural join jobs natural join works "
						+ "where company.name = :companyName) t) " + "group by name",
				params, new RowMapper<Map<String, String>>() {
					@Override
					public Map<String, String> mapRow(ResultSet rs, int rowNum) throws SQLException {
						return factories.mapFactory(rs, "name", "laborCost");
					}
				});
	}
}
