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

import com.finalproject.domain.Course;
import com.finalproject.domain.Person;
import com.finalproject.services.CourseService;

@RestController
@RequestMapping("/courses")
public class CourseController {

	private CourseService courseService;

	@Autowired
	public void setCoursesService(CourseService coursesService) {
		this.courseService = coursesService;
	}

	// Insert a new Course
	@RequestMapping(value = "/create", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void create(@RequestBody Course course) {
		courseService.create(course);
	}

	// Update a company's info
	@RequestMapping(value = "/update/{cCode}", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void update(@RequestBody Course course, @PathVariable String cCode) {
		courseService.update(cCode, course);
	}

	// Update a Person's info
	@RequestMapping(value = "/delete/{cCode}", method = RequestMethod.DELETE, consumes = MediaType.APPLICATION_JSON_VALUE)
	public void update(@PathVariable String cCode) {
		courseService.delete(cCode);
	}

	// Query 10: Find the courses each of which alone can cover a given skill
	// set.
	@RequestMapping(value = "/alone/skill/{skillCode}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllcoursesThatAloneCoversAskill(@PathVariable String skillCode) {
		return courseService.getAllcoursesThatAloneCoversAskill(skillCode);
	}

	// Query 11: List the courses (course id and title) that each alone teaches
	// all the missing knowledge/skills for a person to pursue a specific job..
	@RequestMapping(value = "/alone/skill/job/{jobCode}/employee/id/{per_id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Map<String, String>> getAllcoursesThatAloneTeachesAllSkillsByPer_idAndSkillCode(
			@PathVariable String jobCode, @PathVariable int per_id) {
		return courseService.getAllcoursesThatAloneTeachesAllSkillsByPer_idAndSkillCode(per_id, jobCode);
	}

}
