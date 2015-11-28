package com.finalproject.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.CoursesDao;

@Service("coursesServices")
public class CoursesService {

	private CoursesDao coursesDao;
	
	@Autowired
	public void setSkillsDao(CoursesDao coursesDao) {
		this.coursesDao = coursesDao;
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
