package com.finalproject.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.SkillsDao;

@Service("skillsService")
public class SkillsService {
	
	private SkillsDao skillsDao;
	
	@Autowired
	public void setSkillsDao(SkillsDao skillsDao) {
		this.skillsDao = skillsDao;
	}

	public List<Map<String, String>> getAllSkillsByEmployeeName(String employeeName) {
		try {
			return skillsDao.getAllSkillsByEmployeeName(employeeName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public List<Map<String, String>> getAllSkillsByEmployeeId(int id) {
		try {
			return skillsDao.getAllSkillsByEmployeeId(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getAllSkills() {
		try {
			return skillsDao.getAllSkills();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getAllSkillGapsByEmployeeId(int id) {
		try {
			return skillsDao.getAllSkillGapsByEmployeeId(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	public List<Map<String, String>> getAllCurrentSkillGapsByEmployeeId(int id) {
		try {
			return skillsDao.getAllCurrentSkillGapsByEmployeeId(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getSkillsByJobProfileCode(String jobProfileCode) {
		try {
			return skillsDao.getSkillsByJobProfileCode(jobProfileCode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getMissingSkillsByEmployeeIdAndJobCode(int per_id, String job_code) {
		try {
			return skillsDao.getMissingSkillsByEmployeeIdAndJobCode(per_id, job_code);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
}
