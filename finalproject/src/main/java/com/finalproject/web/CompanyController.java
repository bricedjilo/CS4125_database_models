package com.finalproject.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.finalproject.domain.Company;
import com.finalproject.domain.Person;
import com.finalproject.services.CompanyService;

@RestController
@RequestMapping("/companies")
public class CompanyController {

	private CompanyService companyService;

	@Autowired
	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}

	// Insert a new Company
	@RequestMapping(value = "/create", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void create(@RequestBody Company company) {
		companyService.create(company);
	}

	// Update a Company's info
	@RequestMapping(value = "/update/{compId}", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void update(@RequestBody Company company, @PathVariable int compId) {
		companyService.update(compId, company);
	}

	// delete a Company object
	@RequestMapping(value = "/delete/{compId}", method = RequestMethod.DELETE, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void update(@PathVariable int compId) {
		companyService.delete(compId);
	}

	// List all companies
	@RequestMapping(value = "", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllCompanies() {
		return companyService.getAllCompanies();
	}

	// query 3
	@RequestMapping(value = "/laborcost", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getCompaniesLaborCost() {
		return companyService.getCompaniesLaborCost();
	}

	// query 3.1
	@RequestMapping(value = "/laborcost/{companyName}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getCompanysLaborCost(@PathVariable String companyName) {
		return companyService.getCompanysLaborCost(companyName);
	}

}
