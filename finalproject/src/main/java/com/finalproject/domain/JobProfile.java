package com.finalproject.domain;

public class JobProfile {
	
	private String posCode;
	private String title;
	private String description;
	
	public JobProfile() {
	}

	public String getPosCode() {
		return posCode;
	}

	public void setPosCode(String posCode) {
		this.posCode = posCode;
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

	@Override
	public String toString() {
		return "JobProfile [posCode=" + posCode + ", title=" + title + ", description=" + description + "]";
	}
	
	
}
