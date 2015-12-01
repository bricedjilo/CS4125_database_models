package com.finalproject.services;

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

}
