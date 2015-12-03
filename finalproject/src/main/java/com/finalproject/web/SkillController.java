package com.finalproject.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.finalproject.domain.Skill;
import com.finalproject.services.SkillService;

@RestController
@RequestMapping("/skills")
public class SkillController {

	private SkillService skillService;

	@Autowired
	public void setSkillService(SkillService skillService) {
		this.skillService = skillService;
	}

	// Insert a new Skill
	@RequestMapping(value = "/create", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void create(@RequestBody Skill skill) {
		skillService.create(skill);
	}

	// Update a Skill's info
	@RequestMapping(value = "/update/{ksCode}", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void update(@RequestBody Skill skill, @PathVariable String ksCode) {
		skillService.update(ksCode, skill);
	}

	// Delete a Skill
	@RequestMapping(value = "/delete/{ksCode}", method = RequestMethod.DELETE, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void delete(@PathVariable String ksCode) {
		skillService.delete(ksCode);
	}

	// All skills
	@RequestMapping(value = "", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllSkills() {
		return skillService.getAllSkills();
	}

	// Query 6: List a person’s knowledge/skills in a readable format.// BY NAME
	@RequestMapping(value = "/employee/name/{employeeName}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllSkillsByEmployeeName(@PathVariable String employeeName) {
		return skillService.getAllSkillsByEmployeeName(employeeName);
	}

	// Query 6: List a person’s knowledge/skills in a readable format.// BY ID
	@RequestMapping(value = "/employee/id/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllSkillsByEmployeeId(@PathVariable int id) {
		return skillService.getAllSkillsByEmployeeId(id);
	}

	// Query 7: List the skill gaps of a worker between his/her jobs and his/her
	// skills.// BY ID
	@RequestMapping(value = "/gaps/employee/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllSkillGapsByEmployeeId(@PathVariable int id) {
		return skillService.getAllSkillGapsByEmployeeId(id);
	}

	// Query 7.1: List the skill gap of a worker between his/her current job and
	// his/her
	// skills.// BY ID
	@RequestMapping(value = "/currentgaps/employee/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllCurrentSkillGapsByEmployeeId(@PathVariable int id) {
		return skillService.getAllCurrentSkillGapsByEmployeeId(id);
	}

	// Query 7.2: List the skill gap of a worker between his/her current job and
	// his/her
	// skills.// BY NAME
	@RequestMapping(value = "/currentgaps/employee/name/{employeeName}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllCurrentSkillGapsByEmployeeName(@PathVariable String employeeName) {
		return skillService.getAllCurrentSkillGapsByEmployeeName(employeeName);
	}

	// Query 8: List the required knowledge/skills of a job profile in a
	// readable format.
	@RequestMapping(value = "/jobprofile/{jobProfileCode}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getSkillsByJobProfileCode(@PathVariable String jobProfileCode) {
		return skillService.getSkillsByJobProfileCode(jobProfileCode);
	}
	
	// Query 8: List the required knowledge/skills of a job profile in a
	// readable format. BY specific TITLE
	@RequestMapping(value = "/jobprofile/title/{jobProfileTitle}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getSkillsByJobProfileTitle(@PathVariable String jobProfileTitle) {
		return skillService.getSkillsByJobProfileTitle(jobProfileTitle);
	}

	// Query 9: List a person’s missing knowledge/skills for a specific job in a
	// readable format.
	@RequestMapping(value = "/gaps/employee/id/{per_id}/job/{job_code}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getMissingSkillsByEmployeeIdAndJobCode(@PathVariable int per_id,
			@PathVariable String job_code) {
		return skillService.getMissingSkillsByEmployeeIdAndJobCode(per_id, job_code);
	}

}
