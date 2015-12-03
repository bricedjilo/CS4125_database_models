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

@Component("jobsDao")
public class JobsDao {

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

	// List all jobs and their info
	public List<Map<String, String>> getAllJobs() {
		return jdbc.query("select * from jobs natural join company", new RowMapper<Map<String, String>>() {
			@Override
			public Map<String, String> mapRow(ResultSet rs, int rowNum) throws SQLException {
				return factories.mapFactory(rs, "comp_id", "name", "primary_sector", "website", "job_code", "job_type",
						"job_code", "pay_rate", "pay_type", "pos_code");
			}
		});
	}

	// Query 4: Find all the jobs a person is currently holding.
	public List<Map<String, String>> getAllJobsByEmployeeName(String employeeName) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("employeeName", new StringBuilder("%").append(employeeName.toLowerCase())
				.append("%"));
		return jdbc.query(
				"select per_id, name, start_date, end_date, job_code, title, comp_id "
						+ "from (SELECT * FROM person where LOWER(name) LIKE :employeeName) "
						+ "natural join works natural join jobs natural join jobProfile "
						+ "WHERE end_date >= (select current_date from dual)",
				params, new RowMapper<Map<String, String>>() {
					@Override
					public Map<String, String> mapRow(ResultSet rs, int rowNum) throws SQLException {
						return factories.mapFactory(rs, "per_id", "name", "start_date", "end_date", "job_code", "title",
								"comp_id");
					}
				});
	}
	
	// Query 4: Find all the jobs a person is currently holding.
	public List<Map<String, String>> getAllJobsByEmployeeId(int id) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		return jdbc.query(
				"select per_id, name, start_date, end_date, job_code, title, comp_id "
						+ "from (SELECT * FROM person where per_id = :id) "
						+ "natural join works natural join jobs natural join jobProfile "
						+ "WHERE end_date >= (select current_date from dual)",
				params, new RowMapper<Map<String, String>>() {
					@Override
					public Map<String, String> mapRow(ResultSet rs, int rowNum) throws SQLException {
						return factories.mapFactory(rs, "per_id", "name", "start_date", "end_date", "job_code", "title",
								"comp_id");
					}
				});
	}

	// Get jobs by jobCode
	public List<Map<String, String>> getJobsByCode(String jobCode) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("jobCode", factories.surroundWithPercent(jobCode));
		String sql = "select job_code, comp_id from jobs where LOWER(job_code) LIKE :jobCode";
		return factories.daoBoilerPlate(jdbc, sql, params, "job_code", "comp_id");
	}

}
