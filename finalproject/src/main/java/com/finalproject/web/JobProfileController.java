package com.finalproject.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.finalproject.domain.JobProfile;
import com.finalproject.services.JobProfileService;

@RestController
@RequestMapping("/jobprofile")
public class JobProfileController {

	private JobProfileService jobProfileService;

	@Autowired
	public void setPersonService(JobProfileService jobProfileService) {
		this.jobProfileService = jobProfileService;
	}

	// Insert a new JobProfile
	@RequestMapping(value = "/create", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void create(@RequestBody JobProfile jobProfile) {
		jobProfileService.create(jobProfile);
	}

	// Update a JobProfile info
	@RequestMapping(value = "/update/{posCode}", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void update(@RequestBody JobProfile jobProfile, @PathVariable String posCode) {
		jobProfileService.update(posCode, jobProfile);
	}

	// Delete a Person
	@RequestMapping(value = "/delete/{posCode}", method = RequestMethod.DELETE, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void delete(@PathVariable String posCode) {
		jobProfileService.delete(posCode);
	}

}
