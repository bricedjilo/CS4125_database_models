package com.finalproject.domain;

public class Skill {
	
	private String ksCode;
	private String title;
	private String description;
	private String skillLevel;
	
//	public KnowledgeSkill(String ks_code, String title, String description, String skill_level) {
//		this.ks_code = ks_code;
//		this.title = title;
//		this.description = description;
//		this.skill_level = skill_level;
//	}

	public Skill() {
	}
	
	public String getKsCode() {
		return ksCode;
	}

	public void setKsCode(String ksCode) {
		this.ksCode = ksCode;
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

	public String getSkillLevel() {
		return skillLevel;
	}

	public void setSkillLevel(String skillLevel) {
		this.skillLevel = skillLevel;
	}

	@Override
	public String toString() {
		return "KnowledgeSkill [ksCode=" + ksCode + ", title=" + title + ", description=" + description
				+ ", skillLevel=" + skillLevel + "]";
	}

	
	
}
