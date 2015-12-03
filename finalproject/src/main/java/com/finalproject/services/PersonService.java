package com.finalproject.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.PersonDao;
import com.finalproject.domain.Person;

@Service("personService")
public class PersonService {
	
	private PersonDao personDao;
	
	@Autowired
	public void setPersonDao(PersonDao personDao) {
		this.personDao = personDao;
	}
	
	public void create(Person person) {
		personDao.create(person);
	}

	public List<Map<String,String>> getAllEmployees() {
		try {
			return personDao.getAllEmployees();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public List<Map<String, String>>  getPersonsByCompanyName(String companyName) {
		try {
			return personDao.getAllPersonsByCompanyName(companyName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public List<Map<String, String>>  getEmployeesByCompanyNameAndPayType(String companyName, String pay_type) {
		try {
			return personDao.getEmployeesByCompanyNameAndPayType(companyName, pay_type);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getAllEmployeesByProjectTitle(String projectName) {
		try {
			return personDao.getAllEmployeesByProjectTitle(projectName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public List<Map<String, String>> getAllEmployeesByProjectId(int id) {
		try {
			return personDao.getAllEmployeesByProjectId(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public void update(int per_id, Person person) {
		personDao.update(per_id, person);
	}

	public void delete(int per_id) {
		personDao.delete(per_id);
	}

	public List<Map<String, String>> getAEmployeeByNames(String employeeName) {
		try {
			return personDao.getAEmployeeByNames(employeeName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	
	
}
