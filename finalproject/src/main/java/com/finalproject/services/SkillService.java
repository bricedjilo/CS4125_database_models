package com.finalproject.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.SkillDao;
import com.finalproject.domain.Skill;

@Service("skillService")
public class SkillService {
	
	private SkillDao skillDao;
	
	@Autowired
	public void setSkillsDao(SkillDao skillsDao) {
		this.skillDao = skillsDao;
	}

	public void create(Skill skill){
		skillDao.create(skill);
	}
	
	public void update(String ksCode, Skill skill){
		skillDao.update(ksCode, skill);
	}
	
	public void delete(String ksCode){
		skillDao.delete(ksCode);
	}
	
	public List<Map<String, String>> getAllSkillsByEmployeeName(String employeeName) {
		try {
			return skillDao.getAllSkillsByEmployeeName(employeeName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	public List<Map<String, String>> getAllSkillsByEmployeeId(int id) {
		try {
			return skillDao.getAllSkillsByEmployeeId(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getAllSkills() {
		try {
			return skillDao.getAllSkills();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getAllSkillGapsByEmployeeId(int id) {
		try {
			return skillDao.getAllSkillGapsByEmployeeId(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	public List<Map<String, String>> getAllCurrentSkillGapsByEmployeeId(int id) {
		try {
			return skillDao.getAllCurrentSkillGapsByEmployeeId(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getSkillsByJobProfileCode(String jobProfileCode) {
		try {
			return skillDao.getSkillsByJobProfileCode(jobProfileCode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getMissingSkillsByEmployeeIdAndJobCode(int per_id, String job_code) {
		try {
			return skillDao.getMissingSkillsByEmployeeIdAndJobCode(per_id, job_code);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getAllCurrentSkillGapsByEmployeeName(String employeeName) {
		try {
			return skillDao.getAllCurrentSkillGapsByEmployeeName(employeeName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List<Map<String, String>> getSkillsByJobProfileTitle(String jobProfileTitle) {
		try {
			return skillDao.getSkillsByJobProfileTitle(jobProfileTitle);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
}
