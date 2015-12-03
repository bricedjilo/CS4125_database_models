package com.finalproject.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.finalproject.utility.Factories;

@Component("projectDao")
public class ProjectDao {

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

	// Get Employees BY NAME
	public List<Map<String, String>> getProjectsByName(String projectName) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("projectName", factories.surroundWithPercent(projectName));
		String sql = "select project_id, title from project WHERE LOWER(title) LIKE :projectName";
		return factories.daoBoilerPlate(jdbc, sql, params, "project_id", "title");
	}



}
