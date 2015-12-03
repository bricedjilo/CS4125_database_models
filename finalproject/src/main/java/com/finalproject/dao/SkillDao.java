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

import com.finalproject.domain.Person;
import com.finalproject.domain.Skill;
import com.finalproject.utility.Factories;

@Component("skillsDao")
public class SkillDao {

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
	public void create(Skill skill) {
		Map<String, String> params = new HashMap<String, String>();
		String sql = "INSERT INTO KnowledgeSkill (ks_code, title, description, skill_level) "
				+ "VALUES (:ksCode, :title, :description, :skillLevel)";
		params.put("ksCode", skill.getKsCode());
		params.put("title", skill.getTitle());
		params.put("description", skill.getDescription());
		params.put("skillLevel", skill.getSkillLevel());
		jdbc.update(sql, params);
	}

	// Update or save
	public void update(String ksCode, Skill skill) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		String SQL = "UPDATE KnowledgeSkill SET title = :title, "
				+ "description = :description, skill_level = :skillLevel " + "WHERE ks_code = :ksCode";
		params.addValue("ksCode", ksCode);
		params.addValue("title", skill.getTitle());
		params.addValue("description", skill.getDescription());
		params.addValue("skillLevel", skill.getSkillLevel());
		jdbc.update(SQL, params);
	}

	// Delete person
	public void delete(String ksCode) {
		String SQL = "DELETE FROM KnowledgeSkill WHERE ks_code = :ksCode";
		SqlParameterSource params = new MapSqlParameterSource("ksCode", ksCode);
		jdbc.update(SQL, params);
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

	// Query 7: List the skill gap of a worker between his/her jobs and his/her
	// skills.
	public List<Map<String, String>> getAllSkillGapsByEmployeeId(int id) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		String sql = "select title,skill_level from works natural join jobs natural join "
				+ "requiredskill natural join knowledgeskill where per_id = :id MINUS select "
				+ "title,skill_level from person natural join hasskill natural join "
				+ "knowledgeskill where per_id = :id";
		return factories.daoBoilerPlate(jdbc, sql, params, "title", "skill_level");
	}

	// Query 7.1: List the skill gap of a worker between his/her current jobs
	// and his/her skills.
	public List<Map<String, String>> getAllCurrentSkillGapsByEmployeeId(int id) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		String sql = "select title,skill_level from works natural join jobs natural join "
				+ "requiredskill natural join knowledgeskill where per_id = :id and "
				+ "end_date >= (select CURRENT_DATE from dual)  MINUS select title,skill_level "
				+ "from person natural join hasskill natural join knowledgeskill where per_id = :id";
		return factories.daoBoilerPlate(jdbc, sql, params, "title", "skill_level");
	}

	// // Query 7.2: List the skill gap of a worker between his/her current jobs
	// and his/her skills. By NAME
	public List<Map<String, String>> getAllCurrentSkillGapsByEmployeeName(String employeeName) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("employeeName", factories.surroundWithPercent(employeeName));
		// String sql = "SELECT per_id FROM person WHERE LOWER(name) LIKE
		// :employeeName";
		String sql = "WITH current_jobs as (select name, person.per_id, pos_code from "
				+ "person,works,jobs where LOWER(name) LIKE :employeeName and "
				+ "end_date >= (select CURRENT_DATE from dual) and person.per_id = works.per_id "
				+ "and jobs.job_code=works.job_code), "
				+ "skills as (select * from knowledgeSkill natural join requiredSkill) "
				+ "SELECT ks_code, per_id, title, skill_level from current_jobs natural join " + "skills "
				+ "MINUS select hasskill.ks_code, person.per_id, title, skill_level from "
				+ "person, hasskill, knowledgeskill WHERE LOWER(name) LIKE :employeeName "
				+ "and person.per_id = hasSkill.per_id order by per_id";
		return factories.daoBoilerPlate(jdbc, sql, params, "ks_code", "per_id", "title", "skill_level");
	}

	// Query 8: List the required knowledge/skills of a job profile in a
	// readable format.By pos_code
	public List<Map<String, String>> getSkillsByJobProfileCode(String jobProfileCode) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("jobProfileCode", factories.surroundWithPercent(jobProfileCode));
		String sql = "select * from (select ks_code from jobprofile natural join requiredskill "
				+ "where LOWER(pos_code) LIKE :jobProfileCode) natural join knowledgeskill";
		return factories.daoBoilerPlate(jdbc, sql, params, "ks_code", "title", "skill_level");
	}

	// Query 8: List the required knowledge/skills of a job profile in a
	// readable format.By Title
	public List<Map<String, String>> getSkillsByJobProfileTitle(String jobProfileTitle) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("jobProfileTitle", factories.surroundWithPercent(jobProfileTitle));
		String sql = "select * from (select ks_code from jobprofile natural join requiredskill "
				+ "where LOWER(title) LIKE :jobProfileTitle) natural join knowledgeskill";
		return factories.daoBoilerPlate(jdbc, sql, params, "ks_code", "title", "skill_level");
	}

	// Query: 9.. List a person’s missing knowledge/skills for a specific job in
	// a readable format. BY per_ID and job_code
	public List<Map<String, String>> getMissingSkillsByEmployeeIdAndJobCode(int per_id, String job_code)
			throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("job_code", factories.surroundWithPercent(job_code));
		params.addValue("per_id", per_id);
		String sql = "select ks_code, title, skill_level from jobs natural join requiredskill "
				+ "natural join knowledgeskill where LOWER(job_code) LIKE :job_code MINUS "
				+ "select ks_code, title, skill_level from person natural join hasskill "
				+ "natural join knowledgeskill where per_id = :per_id";
		return factories.daoBoilerPlate(jdbc, sql, params, "ks_code", "title", "skill_level");
	}

	public List<Map<String, String>> getMissingSkillsByEmployeeNameAndJobCode(String employeeName, String job_code) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("job_code", factories.surroundWithPercent(job_code));
		params.addValue("employeeName", factories.surroundWithPercent(employeeName));
		String sql = "select ks_code, title, skill_level from jobs natural join requiredskill "
				+ "natural join knowledgeskill where LOWER(job_code) LIKE :job_code MINUS "
				+ "select ks_code, title, skill_level from person natural join hasskill "
				+ "natural join knowledgeskill where LOWER(name) = :employeeName";
		return factories.daoBoilerPlate(jdbc, sql, params, "ks_code", "title", "skill_level");
	}

}
