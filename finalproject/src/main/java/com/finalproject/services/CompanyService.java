package com.finalproject.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.CompanyDao;
import com.finalproject.domain.Company;

@Service("companyService")
public class CompanyService {
	
	private CompanyDao companyDao;
	
	@Autowired
	public void setCompanyDao(CompanyDao companyDao) {
		this.companyDao = companyDao;
	}
	
	public void create(Company company) {
		try {
			companyDao.create(company);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void update(int compId, Company company) {
		try {
			companyDao.update(compId, company);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void delete(int compId) {
		try {
			companyDao.delete(compId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// List all companies
	public List<Map<String, String>>  getAllCompanies() {
		try {
			return companyDao.getAllCompanies();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	// Query 3
	public List<Map<String, String>>  getCompaniesLaborCost() {
		try {
			return companyDao.getCompaniesLaborCost();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	// Query 3.1
	public List<Map<String, String>>  getCompanysLaborCost(String companyName) {
		try {
			return companyDao.getCompanysLaborCost(companyName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getCompanyByName(String companyName) {
		try {
			return companyDao.getCompanyByName(companyName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
}
