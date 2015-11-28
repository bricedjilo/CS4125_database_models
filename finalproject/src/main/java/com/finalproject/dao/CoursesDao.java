package com.finalproject.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.finalproject.utility.Factories;

@Component("coursesDao")
public class CoursesDao {
	
	private NamedParameterJdbcTemplate jdbc;
	private Factories factories;

	@Autowired
	public void setJdbc(NamedParameterJdbcTemplate jdbc) {
		this.jdbc = jdbc;
	}

	@Autowired
	public void setFactories(Factories factories) {
		this.factories = factories;
	}

	// Query 10: Find the courses each of which alone can cover a given skill set.
	public List<Map<String, String>> getAllcoursesThatAloneCoversAskill(String skillCode) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("skillCode", skillCode.trim().toLowerCase());
		String sql = "select c_code, title, course_level from (select count(c_code), ks_code "
				+ "from knowledgeskill natural join trainingforskill where LOWER(ks_code) = :skillCode "
				+ "group by ks_code having count(c_code)=1) t natural join trainingforskill "
				+ "natural join course_";
		return factories.daoBoilerPlate(jdbc, sql, params, "c_code", "title", "course_level");
	}
	
	// Query 11: List the courses (course id and title) that each alone teaches all the missing knowledge/skills for a person to pursue a specific job
	public List<Map<String, String>> getAllcoursesThatAloneTeachesAllSkillsByPer_idAndSkillCode(int per_id,
			String jobCode) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("jobCode", jobCode.trim().toLowerCase());
		params.addValue("per_id", per_id);
		String sql = "select c_code, title, course_level from (with t1 as "
				+ "(select ks_code from jobs natural join jobprofile natural join "
				+ "requiredSkill where LOWER(job_code) = :jobCode MINUS select ks_code from "
				+ "person natural join hasskill natural join knowledgeskill where per_id = :per_id) "
				+ "select c_code from t1, trainingforskill tr where t1.ks_code=tr.ks_code "
				+ "group by c_code having count(c_code)=1) natural join course_";
		return factories.daoBoilerPlate(jdbc, sql, params, "c_code", "title", "course_level");
	}
	
	
	
}
