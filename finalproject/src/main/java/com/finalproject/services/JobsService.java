package com.finalproject.services;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.JobsDao;

@Service("jobsService")
public class JobsService {

	private JobsDao jobsDao;

	@Autowired
	public void setJobsDao(JobsDao jobsDao) {
		this.jobsDao = jobsDao;
	}
	
	public List<Map<String,String>> getAllJobs() {
		return jobsDao.getAllJobs();
	}
	
	public List<Map<String,String>> getAllJobsByEmployeeName(String employeeName) {
		return jobsDao.getAllJobsByEmployeeName(employeeName);
	}
	
	public List<Map<String,String>> getAllJobsByEmployeeId(int id) {
		return jobsDao.getAllJobsByEmployeeId(id);
	}

}
