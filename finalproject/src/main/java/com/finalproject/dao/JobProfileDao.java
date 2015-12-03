package com.finalproject.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Component;

import com.finalproject.domain.JobProfile;
import com.finalproject.domain.Person;
import com.finalproject.utility.Factories;

@Component("jobProfileDao")
public class JobProfileDao {

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

	// Insert/Create
	public void create(JobProfile jobProfile) {
		Map<String, String> params = new HashMap<String, String>();
		String sql = "INSERT INTO JobProfile (pos_code, title, description) VALUES "
				+ "(:posCode, :title, :description)";
		params.put("posCode", jobProfile.getPosCode());
		params.put("title", jobProfile.getTitle());
		params.put("description", jobProfile.getDescription());
		jdbc.update(sql, params);
	}

	// Update or save
	public void update(String posCode, JobProfile jobProfile) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		String SQL = "UPDATE JobProfile SET title = :title, description = :description " + "WHERE pos_code = :posCode";
		params.addValue("posCode", posCode);
		params.addValue("title", jobProfile.getTitle());
		params.addValue("description", jobProfile.getDescription());
		jdbc.update(SQL, params);
	}

	// Delete person
	public void delete(String posCode) {
		String SQL = "DELETE FROM JobProfile WHERE pos_code = :posCode";
		SqlParameterSource params = new MapSqlParameterSource("posCode", posCode);
		jdbc.update(SQL, params);
	}

	public List<Map<String, String>> getJobProfileByTitle(String jobProfileTitle) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("jobProfileTitle", factories.surroundWithPercent(jobProfileTitle));
		String sql = "select pos_code, title from jobProfile WHERE LOWER(title) "
				+ "LIKE :jobProfileTitle";
		return factories.daoBoilerPlate(jdbc, sql, params, "pos_code", "title");
	}

}
