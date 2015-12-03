package com.finalproject.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.finalproject.services.ProjectService;

@RestController
@RequestMapping("/projects")
public class ProjectController {

	private ProjectService projectService;

	@Autowired
	public void setPersonService(ProjectService projectService) {
		this.projectService = projectService;
	}

	// Get Projects by name
	@RequestMapping(value = "/name/{projectName}", method = RequestMethod.GET)
	@ResponseBody
	public List<Map<String, String>> getProjectsByName(@PathVariable String projectName) {
		return projectService.getProjectsByName(projectName);
	}
}
