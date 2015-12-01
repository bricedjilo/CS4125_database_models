package com.finalproject.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.CourseDao;
import com.finalproject.domain.Course;
import com.finalproject.domain.Person;

@Service("coursesServices")
public class CourseService {

	private CourseDao coursesDao;
	
	@Autowired
	public void setSkillsDao(CourseDao coursesDao) {
		this.coursesDao = coursesDao;
	}

	public void create(Course course) {
		coursesDao.create(course);
	}
	
	public void update(String cCode, Course course) {
		coursesDao.update(cCode, course);
	}
	
	public void delete(String cCode) {
		coursesDao.delete(cCode);
	}
	
	public List<Map<String, String>> getAllcoursesThatAloneCoversAskill(String skillCode) {
		try {
			return coursesDao.getAllcoursesThatAloneCoversAskill(skillCode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getAllcoursesThatAloneTeachesAllSkillsByPer_idAndSkillCode(int per_id, String jobCode) {
		try {
			return coursesDao.getAllcoursesThatAloneTeachesAllSkillsByPer_idAndSkillCode(per_id, jobCode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
}
