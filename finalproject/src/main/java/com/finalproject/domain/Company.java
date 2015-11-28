package com.finalproject.domain;


public class Company {
	
	private int comp_id;
	private String name;
	private String primary_sector;
	private String website;
	
	public Company(String name, String primary_sector, String website) {
		this.name = name;
		this.primary_sector = primary_sector;
		this.website = website;
	}

	public int getComp_id() {
		return comp_id;
	}

	public void setComp_id(int comp_id) {
		this.comp_id = comp_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrimary_sector() {
		return primary_sector;
	}

	public void setPrimary_sector(String primary_sector) {
		this.primary_sector = primary_sector;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}
	
}
