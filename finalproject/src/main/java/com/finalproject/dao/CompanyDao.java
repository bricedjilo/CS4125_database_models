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

import com.finalproject.domain.Company;
import com.finalproject.domain.Person;
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

	// Insert/Create
	public void create(Company company) throws SQLException {
		Map<String, String> params = new HashMap<String, String>();
		String SQL = "INSERT INTO Company (name, primary_sector, website) "
				+ "VALUES (:name, :primarySector, :website)";
		params.put("name", company.getName());
		params.put("primarySector", company.getPrimarySector());
		params.put("website", company.getWebsite());
		jdbc.update(SQL, params);
	}

	// Update or save
	public void update(int compId, Company company) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		String SQL = "UPDATE Company SET name = :name, primary_sector = :primarySector, website = :website WHERE comp_id = :compId";
		params.addValue("compId", compId);
		params.addValue("name", company.getName());
		params.addValue("primarySector", company.getPrimarySector());
		params.addValue("website", company.getWebsite());
		jdbc.update(SQL, params);
	}

	// Delete Company
	public void delete(int compId) throws SQLException {
		String SQL = "DELETE FROM Company WHERE comp_id = :compId";
		SqlParameterSource params = new MapSqlParameterSource("compId", compId);
		jdbc.update(SQL, params);
	}

	// List all companies and their info
	public List<Map<String, String>> getAllCompanies() throws SQLException {
		String sql = "select * from companyAddress natural join company natural join speciality order by name";
		return factories.daoBoilerPlate(jdbc, sql, null, "comp_id", "name", "primary_sector", "website", "street",
				"city", "zip_code", "speciality_name");
	}

	// get Companies by Name
	public List<Map<String, String>> getCompanyByName(String companyName) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("companyName", factories.surroundWithPercent(companyName));
		String sql = "select * from company where LOWER(name) LIKE :companyName";
		return factories.daoBoilerPlate(jdbc, sql, params, "name", "primary_sector");
	}
	
	// Query 3; companies' labor cost
	public List<Map<String, String>> getCompaniesLaborCost() throws SQLException {
		String sql = "select name, sum(wages) as laborCost from (select name, "
				+ "(case pay_type when 'wage' then pay_rate*1920 else pay_rate end) as wages "
				+ "from (select * from company natural join jobs natural join works) t) group by name";
		return factories.daoBoilerPlate(jdbc, sql, null, "name", "laborCost");
	}

	// Query 3.1; A company's labor cost
	public List<Map<String, String>> getCompanysLaborCost(String companyName) throws SQLException {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("companyName", factories.surroundWithPercent(companyName));
		String sql = "select name, sum(wages) as laborCost from (select name, "
				+ "(case pay_type when 'wage' then pay_rate*1920 else pay_rate end) as wages "
				+ "from (select * from company natural join jobs natural join works "
				+ "where LOWER(company.name) LIKE :companyName) t) group by name";
		return factories.daoBoilerPlate(jdbc, sql, params, "name", "laborCost");
	}

	
}
