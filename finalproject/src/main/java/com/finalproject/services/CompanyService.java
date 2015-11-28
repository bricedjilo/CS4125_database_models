package com.finalproject.services;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.CompanyDao;

@Service("companyService")
public class CompanyService {
	
	private CompanyDao companyDao;
	
	@Autowired
	public void setPersonDao(CompanyDao companyDao) {
		this.companyDao = companyDao;
	}
	
	// List all companies
	public List<Map<String, String>>  getAllCompanies() {
		return companyDao.getAllCompanies();
	}
	
	// Query 3
	public List<Map<String, String>>  getCompaniesLaborCost() {
		return companyDao.getCompaniesLaborCost();
	}
	
	// Query 3.1
	public List<Map<String, String>>  getCompanysLaborCost(String companyName) {
		return companyDao.getCompanysLaborCost(companyName);
	}
	
}
