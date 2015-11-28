package com.finalproject.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.finalproject.services.SkillsService;

@RestController
@RequestMapping("/skills")
public class SkillsController {

	private SkillsService skillsService;

	@Autowired
	public void setSkillsService(SkillsService skillsService) {
		this.skillsService = skillsService;
	}

	// All skills
	@RequestMapping(value = "", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllSkills() {
		return skillsService.getAllSkills();
	}

	// Query 6: List a person’s knowledge/skills in a readable format.// BY NAME
	@RequestMapping(value = "/employee/name/{employeeName}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllSkillsByEmployeeName(@PathVariable String employeeName) {
		return skillsService.getAllSkillsByEmployeeName(employeeName);
	}

	// Query 6: List a person’s knowledge/skills in a readable format.// BY ID
	@RequestMapping(value = "/employee/id/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllSkillsByEmployeeId(@PathVariable int id) {
		return skillsService.getAllSkillsByEmployeeId(id);
	}

	// Query 7: List the skill gaps of a worker between his/her jobs and his/her
	// skills.// BY ID
	@RequestMapping(value = "/gaps/employee/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllSkillGapsByEmployeeId(@PathVariable int id) {
		return skillsService.getAllSkillGapsByEmployeeId(id);
	}

	// Query 7.1: List the skill gap of a worker between his/her current job and
	// his/her
	// skills.// BY ID
	@RequestMapping(value = "/currentgaps/employee/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllCurrentSkillGapsByEmployeeId(@PathVariable int id) {
		return skillsService.getAllCurrentSkillGapsByEmployeeId(id);
	}

	// Query 8: List the required knowledge/skills of a job profile in a
	// readable format.
	@RequestMapping(value = "/jobprofile/{jobProfileCode}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getSkillsByJobProfileCode(@PathVariable String jobProfileCode) {
		return skillsService.getSkillsByJobProfileCode(jobProfileCode);
	}

	// Query 9: List a person’s missing knowledge/skills for a specific job in a readable format.
	@RequestMapping(value = "/gaps/employee/id/{per_id}/job/{job_code}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getMissingSkillsByEmployeeIdAndJobCode(
			@PathVariable int per_id, @PathVariable String job_code) {
		return skillsService.getMissingSkillsByEmployeeIdAndJobCode(per_id, job_code);
	}

}
