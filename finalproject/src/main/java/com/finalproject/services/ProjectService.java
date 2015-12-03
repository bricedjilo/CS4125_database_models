package com.finalproject.services;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.dao.ProjectDao;

@Service("projectService")
public class ProjectService {

	private ProjectDao projectDao;

	@Autowired
	public void setProjectDao(ProjectDao projectDao) {
		this.projectDao = projectDao;
	}

	// Get project by Title
	public List<Map<String, String>> getProjectsByName(String projectName) {
		try {
			return projectDao.getProjectsByName(projectName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

}
