package com.finalproject.domain;

public class Course {
	
	private String c_code;
	private String title;
	private String course_level;
	private String description;
	private String status;
	private int retail_price;
	
	public Course(String c_code, String title, String course_level, 
			String description, String status, int retail_price) {
		this.c_code = c_code;
		this.title = title;
		this.course_level = course_level;
		this.description = description;
		this.status = status;
		this.retail_price = retail_price;
	}
	
	public String getC_code() {
		return c_code;
	}
	public void setC_code(String c_code) {
		this.c_code = c_code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCourse_level() {
		return course_level;
	}
	public void setCourse_level(String course_level) {
		this.course_level = course_level;
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
	public int getRetail_price() {
		return retail_price;
	}
	public void setRetail_price(int retail_price) {
		this.retail_price = retail_price;
	}
	
}
