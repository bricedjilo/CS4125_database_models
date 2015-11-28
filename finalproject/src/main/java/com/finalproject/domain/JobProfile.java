package com.finalproject.domain;

public class JobProfile {
	
	private String pos_code;
	private String title;
	private String description;
	
	public JobProfile(String pos_code, String title, String description) {
		this.pos_code = pos_code;
		this.title = title;
		this.description = description;
	}

	public String getPos_code() {
		return pos_code;
	}

	public void setPos_code(String pos_code) {
		this.pos_code = pos_code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
