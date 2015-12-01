package com.finalproject.domain;

public class Course {
	
	private String cCode;
	private String title;
	private String courseLevel;
	private String description;
	private String status;
	private String retailPrice;
	
	public Course(){
	}

	public String getcCode() {
		return cCode;
	}

	public void setcCode(String cCode) {
		this.cCode = cCode;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCourseLevel() {
		return courseLevel;
	}
	public void setCourseLevel(String courseLevel) {
		this.courseLevel = courseLevel;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRetailPrice() {
		return retailPrice;
	}
	public void setRetailPrice(String retailPrice) {
		this.retailPrice = retailPrice;
	}

	@Override
	public String toString() {
		return "Course [cCode=" + cCode + ", title=" + title + ", courseLevel=" + courseLevel + ", description="
				+ description + ", status=" + status + ", retailPrice=" + retailPrice + "]";
	}
	
	
}
