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

import com.finalproject.domain.Person;
import com.finalproject.utility.Factories;

@Component("personDao")
public class PersonDao {

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
	public void create(Person person) {
		Map<String, String> params = new HashMap<String, String>();
		String sql = "INSERT INTO Person (name, email, gender) VALUES (:name, :email, :gender)";
		params.put("name", person.getName());
		params.put("email", person.getEmail());
		params.put("gender", person.getGender());
		jdbc.update(sql, params);
	}

	// Update or save
	public void update(int per_id, Person person) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		String SQL = "UPDATE Person SET name = :name, email = :email, gender = :gender WHERE per_id = :per_id";
		params.addValue("per_id", per_id);
		params.addValue("name", person.getName());
		params.addValue("email", person.getEmail());
		params.addValue("gender", person.getGender());
		jdbc.update(SQL, params);
	}
	
	// Delete person
	public void delete(int per_id) {
		String SQL = "DELETE FROM Person WHERE per_id = :per_id";
		SqlParameterSource params = new MapSqlParameterSource("per_id", per_id);
		jdbc.update(SQL, params);
	}

	// List all employees
	public List<Map<String, String>> getAllEmployees() throws SQLException {
		String sql = "select * from employeeAddress natural join person natural join phone";
		return factories.daoBoilerPlate(jdbc, sql, null, "per_id", "name", "email", "gender", "phone_number",
				"phone_type", "street", "city", "zip_code", "state");
	}

	// Query 1
	public List<Map<String, String>> getAllPersonsByCompanyName(String companyName) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("companyName", factories.surroundWithPercent(companyName));
		String sql = "select person.per_id, person.name, t.comp_id, t.name as comp_name "
				+ "from (select * from company natural join works " + "where LOWER(company.name) LIKE :companyName) t "
				+ "join person on (person.per_id = t.per_id) order by person.name ASC";
		return factories.daoBoilerPlate(jdbc, sql, params, "per_id", "name", "comp_id", "comp_name");
	}

	// Query 2; stuff == salary
	public List<Map<String, String>> getEmployeesByCompanyNameAndPayType(String companyName, String pay_type)
			throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("companyName", factories.surroundWithPercent(companyName));
		params.addValue("pay_type", pay_type);
		String sql = "select person.per_id, person.name, t.name as comp_name, t.pay_rate, t.pay_type "
				+ "from (select * from company natural join jobs natural join works "
				+ "where jobs.pay_type = :pay_type and LOWER(company.name) LIKE :companyName) t "
				+ "join person on (person.per_id = t.per_id) order by t.pay_rate DESC";
		return factories.daoBoilerPlate(jdbc, sql, params, "per_id", "name", "comp_name", "pay_rate", "Pay_type");
	}

	// Query 5: List all the workers who are working for a specific project. BY
	// Title
	public List<Map<String, String>> getAllEmployeesByProjectTitle(String projectName) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("projectName", factories.surroundWithPercent(projectName));
		String sql = "select distinct per_id, name, comp_id, title " + "from (select comp_id, title from project where "
				+ "LOWER(title) LIKE :projectName) natural join isAssigned "
				+ "natural join jobs natural join works natural join person";
		return factories.daoBoilerPlate(jdbc, sql, params, "per_id", "name", "comp_id", "title");
	}

	// Query 5: List all the workers who are working for a specific project. BY
	// ID
	public List<Map<String, String>> getAllEmployeesByProjectId(int id) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		String sql = "select distinct per_id, name, project_id, comp_id, title from (select t.comp_id, t.project_id, "
				+ "t.title from (select comp_id, title, project_id from project where project_id = :id) t, "
				+ "isAssigned where t.project_id = isAssigned.project_id) natural join jobs natural "
				+ "join works natural join person";
		return factories.daoBoilerPlate(jdbc, sql, params, "per_id", "name", "comp_id", "title", "project_id");
	}

}