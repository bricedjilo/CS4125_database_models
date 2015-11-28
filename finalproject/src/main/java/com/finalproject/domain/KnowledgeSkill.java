package com.finalproject.domain;

public class KnowledgeSkill {
	
	private String ks_code;
	private String title;
	private String description;
	private String skill_level;
	
	public KnowledgeSkill(String ks_code, String title, String description, String skill_level) {
		this.ks_code = ks_code;
		this.title = title;
		this.description = description;
		this.skill_level = skill_level;
	}

	public String getKs_code() {
		return ks_code;
	}

	public void setKs_code(String ks_code) {
		this.ks_code = ks_code;
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

	public String getSkill_level() {
		return skill_level;
	}

	public void setSkill_level(String skill_level) {
		this.skill_level = skill_level;
	}
	
}
