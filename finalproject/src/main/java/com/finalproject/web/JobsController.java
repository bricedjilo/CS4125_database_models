package com.finalproject.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalproject.services.JobsService;

@Controller
@RequestMapping("/jobs")
public class JobsController {

	private JobsService jobsService;

	@Autowired
	public void setCompanyService(JobsService jobsService) {
		this.jobsService = jobsService;
	}

	// List all jobs
	@RequestMapping(value = "", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllJobs() {
		return jobsService.getAllJobs();
	}

	// Query 4: Find all the jobs a person is currently holding.// BY NAME
	@RequestMapping(value = "/holds/{employeeName}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllJobsByEmployeeName(@PathVariable String employeeName) {
		return jobsService.getAllJobsByEmployeeName(employeeName);
	}

	// Query 4: Find all the jobs a person is currently holding. // BY ID
	@RequestMapping(value = "/holds/id/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllJobsByEmployeeId(@PathVariable int id) {
		return jobsService.getAllJobsByEmployeeId(id);
	}

}
