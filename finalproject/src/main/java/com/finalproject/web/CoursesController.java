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

import com.finalproject.services.CoursesService;

@RestController
@RequestMapping("/courses")
public class CoursesController {

	private CoursesService coursesService;

	@Autowired
	public void setCoursesService(CoursesService coursesService) {
		this.coursesService = coursesService;
	}

	// Query 10: Find the courses each of which alone can cover a given skill set.
	@RequestMapping(value = "/alone/skill/{skillCode}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllcoursesThatAloneCoversAskill(@PathVariable String skillCode) {
		return coursesService.getAllcoursesThatAloneCoversAskill(skillCode);
	}
	
	// Query 11: List the courses (course id and title) that each alone teaches all the missing knowledge/skills for a person to pursue a specific job..
	@RequestMapping(value = "/alone/skill/job/{jobCode}/employee/id/{per_id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllcoursesThatAloneTeachesAllSkillsByPer_idAndSkillCode(
			@PathVariable String jobCode, @PathVariable int per_id) {
		return coursesService.getAllcoursesThatAloneTeachesAllSkillsByPer_idAndSkillCode(per_id, jobCode);
	}

}
