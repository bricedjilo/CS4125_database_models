package com.finalproject.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.finalproject.utility.Factories;

@Component("skillsDao")
public class SkillsDao {

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
	
	// All skills
	public List<Map<String, String>> getAllSkills() throws SQLException {
		String sql = "select title, description, skill_level from knowledgeSkill";
		return factories.daoBoilerPlate(jdbc, sql, null, "title", "description", "skill_level");
	}

	// Query 6: List a person’s knowledge/skills in a readable format.// BY NAME
	public List<Map<String, String>> getAllSkillsByEmployeeName(String employeeName) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("employeeName", factories.surroundWithPercent(employeeName));
		String sql = "select name,title,skill_level from person natural join "
				+ "hasskill natural join knowledgeskill where LOWER(name) LIKE :employeeName";
		return factories.daoBoilerPlate(jdbc, sql, params, "name", "title", "skill_level");
	}

	// Query 6.1: List a person’s knowledge/skills in a readable format.// BY ID
	public List<Map<String, String>> getAllSkillsByEmployeeId(int id) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		String sql = "select name,title, skill_level from person natural join "
				+ "hasskill natural join knowledgeskill where per_id = :id";
		return factories.daoBoilerPlate(jdbc, sql, params, "name", "title", "skill_level");
	}

	// Query 7: List the skill gap of a worker between his/her jobs and his/her skills.
	public List<Map<String, String>> getAllSkillGapsByEmployeeId(int id) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		String sql = "select title,skill_level from works natural join jobs natural join "
				+ "requiredskill natural join knowledgeskill where per_id = :id MINUS select "
				+ "title,skill_level from person natural join hasskill natural join "
				+ "knowledgeskill where per_id = :id";
		return factories.daoBoilerPlate(jdbc, sql, params, "title", "skill_level");
	}
	
	// Query 7.1: List the skill gap of a worker between his/her current jobs and his/her skills.
	public List<Map<String, String>> getAllCurrentSkillGapsByEmployeeId(int id) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		String sql = "select title,skill_level from works natural join jobs natural join "
				+ "requiredskill natural join knowledgeskill where per_id = :id and "
				+ "end_date >= (select CURRENT_DATE from dual)  MINUS select title,skill_level "
				+ "from person natural join hasskill natural join knowledgeskill where per_id = :id";
		return factories.daoBoilerPlate(jdbc, sql, params, "title", "skill_level");
	}
	
	// Query 8: List the required knowledge/skills of a job profile in a readable format.By pos_code 
	public List<Map<String, String>> getSkillsByJobProfileCode(String jobProfileCode) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("jobProfileCode", factories.surroundWithPercent(jobProfileCode));
		String sql = "select * from (select ks_code from jobprofile natural join requiredskill "
				+ "where LOWER(pos_code) LIKE :jobProfileCode) natural join knowledgeskill";
		return factories.daoBoilerPlate(jdbc, sql, params, "ks_code", "title", "skill_level");
	}
	
	// Query: 9.. List a person’s missing knowledge/skills for a specific job in a readable format. BY per_ID and job_code
	public List<Map<String, String>> getMissingSkillsByEmployeeIdAndJobCode(int per_id, String job_code) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("job_code", factories.surroundWithPercent(job_code));
		params.addValue("per_id", per_id);
		String sql = "select ks_code, title, skill_level from jobs natural join requiredskill "
				+ "natural join knowledgeskill where LOWER(job_code) LIKE :job_code MINUS "
				+ "select ks_code, title, skill_level from person natural join hasskill "
				+ "natural join knowledgeskill where per_id = :per_id";
		return factories.daoBoilerPlate(jdbc, sql, params, "ks_code", "title", "skill_level");
	}

}
