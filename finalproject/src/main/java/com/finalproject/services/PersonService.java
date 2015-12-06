package com.finalproject.services;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
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

	public List<Map<String, String>> create(Person person) {
		try {
			personDao.create(person);
			return personDao.getRecentlyCreatedPerson();
		} catch (Exception e) {
			List<Map<String, String>> list = new ArrayList<>();
			Map<String, String> map = new HashMap<>();
			map.put("error", "Person was not created. The database could not be accessed");
			list.add(map);
			return list;
		}

	}

	public List<Map<String, String>> getAllEmployees() {
		try {
			return personDao.getAllEmployees();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getPersonsByCompanyName(String companyName) {
		try {
			return personDao.getAllPersonsByCompanyName(companyName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getEmployeesByCompanyNameAndPayType(String companyName, String pay_type) {
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

	public List<Map<String, String>> update(int per_id, Person person) {
		try {
			personDao.update(per_id, person);
		} catch (Exception e) {
			List<Map<String, String>> list = new ArrayList<>();
			Map<String, String> map = new HashMap<>();
			map.put("error", "Person was not updated. The database could not be accessed");
			list.add(map);
			return list;
		}

		try {
			return personDao.getAEmployeeById(per_id);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
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

	public List<Map<String, String>> getAEmployeeById(int id) {
		try {
			return personDao.getAEmployeeById(id);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
