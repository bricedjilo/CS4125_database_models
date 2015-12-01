package com.finalproject.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Component;

import com.finalproject.domain.Course;
import com.finalproject.domain.Person;
import com.finalproject.utility.Factories;

@Component("coursesDao")
public class CourseDao {

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

	// Insert/Create
	public void create(Course course) {
		Map<String, String> params = new HashMap<String, String>();
		String sql = "INSERT INTO Course_ (c_code, title, course_level, description, status, retail_price) "
				+ "VALUES (:cCode, :title, :courseLevel, :description, :status, :retailPrice)";
		params.put("cCode", course.getcCode());
		params.put("title", course.getTitle());
		params.put("courseLevel", course.getCourseLevel());
		params.put("description", course.getDescription());
		params.put("status", course.getStatus());
		params.put("retailPrice", course.getRetailPrice());
		jdbc.update(sql, params);
	}

	// Update or save
	public void update(String cCode, Course course) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		String SQL = "UPDATE Course_ SET title = :title, " + "course_level = :courseLevel, description = :description, "
				+ "status = :status, retail_price = :retailPrice WHERE c_code = :cCode";
		params.addValue("cCode", cCode);
		params.addValue("title", course.getTitle());
		params.addValue("courseLevel", course.getCourseLevel());
		params.addValue("description", course.getDescription());
		params.addValue("status", course.getStatus());
		params.addValue("retailPrice", course.getRetailPrice());
		jdbc.update(SQL, params);
	}

	// Delete person
	public void delete(String cCode) {
		String SQL = "DELETE FROM Course_ WHERE c_code = :cCode";
		SqlParameterSource params = new MapSqlParameterSource("cCode", cCode);
		jdbc.update(SQL, params);
	}

	// Query 10: Find the courses each of which alone can cover a given skill
	// set.
	public List<Map<String, String>> getAllcoursesThatAloneCoversAskill(String skillCode) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("skillCode", skillCode.trim().toLowerCase());
		String sql = "select c_code, title, course_level from (select count(c_code), ks_code "
				+ "from knowledgeskill natural join trainingforskill where LOWER(ks_code) = :skillCode "
				+ "group by ks_code having count(c_code)=1) t natural join trainingforskill " + "natural join course_";
		return factories.daoBoilerPlate(jdbc, sql, params, "c_code", "title", "course_level");
	}

	// Query 11: List the courses (course id and title) that each alone teaches
	// all the missing knowledge/skills for a person to pursue a specific job
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
