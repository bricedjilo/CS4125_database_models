package com.finalproject.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.JobProfileDao;
import com.finalproject.domain.JobProfile;


@Service("jobProfileService")
public class JobProfileService {

	private JobProfileDao jobProfileDao;

	@Autowired
	public void setPersonDao(JobProfileDao jobProfileDao) {
		this.jobProfileDao = jobProfileDao;
	}

	public void create(JobProfile jobProfile) {
		jobProfileDao.create(jobProfile);
	}

	public void update(String posCode, JobProfile jobProfile) {
		jobProfileDao.update(posCode, jobProfile);		
	}
	
	public void delete(String posCode) {
		jobProfileDao.delete(posCode);		
	}

	public List<Map<String, String>> getJobProfileByTitle(String jobProfileTitle) {
		try {
			return jobProfileDao.getJobProfileByTitle(jobProfileTitle);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

}
