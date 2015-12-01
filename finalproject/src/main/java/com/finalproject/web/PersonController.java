package com.finalproject.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.eclipse.jetty.servlets.CrossOriginFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


import com.finalproject.domain.Person;
import com.finalproject.services.PersonService;


@RestController
@RequestMapping("/employees")
public class PersonController {

	private static List<Person> persons = new ArrayList<Person>();
	private PersonService personService;

	static {
		persons.add(new Person("Patson", "patson@mysite.com", "Male"));
	}

	@Autowired
	public void setPersonService(PersonService personService) {
		this.personService = personService;
	}

	// test
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	@ResponseBody
	public List<Person> getAllPerson() {
		return persons;
	}

	// Insert a new Person
	@RequestMapping(value = "/create", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void create(@RequestBody Person person) {
		personService.create(person);
	}

	// Update a Person's info
	@RequestMapping(value = "/update/{per_id}", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void update(@RequestBody Person person, @PathVariable int per_id) {
		personService.update(per_id, person);
	}

	// Delete a Person
	@RequestMapping(value = "/delete/{per_id}", method = RequestMethod.DELETE, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void delete(@PathVariable int per_id) {
		personService.delete(per_id);
	}

	// List all employees
	@RequestMapping(value = "", method = RequestMethod.GET)
	@ResponseBody
	public List<Map<String, String>> getAllEmployees() {
		return personService.getAllEmployees();
	}

	// query 1: List a company's workers by name
	@RequestMapping(value = "/companies/{companyName}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getEmployeesByCompany(@PathVariable("companyName") String companyName) {
		return personService.getPersonsByCompanyName(companyName);
	}

	// query 2. List a company’s staff by salary in descending order.
	@RequestMapping(value = "/companies/{companyName}/{pay_type}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getEmployeesByCompanyNameAndPayType(@PathVariable String companyName,
			@PathVariable String pay_type) {
		return personService.getEmployeesByCompanyNameAndPayType(companyName, pay_type);
	}

	// query 5/By Title. List all the workers who are working for a specific
	// project.
	@RequestMapping(value = "/projects/{projectName}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllEmployeesByProjectTitle(@PathVariable String projectName) {
		return personService.getAllEmployeesByProjectTitle(projectName);
	}

	// query 5/By ID. List all the workers who are working for a specific
	// project.
	@RequestMapping(value = "/projects/id/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllEmployeesByProjectId(@PathVariable int id) {
		return personService.getAllEmployeesByProjectId(id);
	}

	@RequestMapping("*")
	@ResponseBody
	public String fallbackMethod() {
		return "fallback method";
	}

}
