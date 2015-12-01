package com.finalproject.domain;


public class Company {
	
	private int compId;
	private String name;
	private String primarySector;
	private String website;
	
	public Company(String name, String primarySector, String website) {
		this.name = name;
		this.primarySector = primarySector;
		this.website = website;
	}
	
	public Company() {
		
	}

	public int getCompId() {
		return compId;
	}

	public void setCompId(int compId) {
		this.compId = compId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrimarySector() {
		return primarySector;
	}

	public void setPrimarySector(String primarySector) {
		this.primarySector = primarySector;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	@Override
	public String toString() {
		return "Company [compId=" + compId + ", name=" + name + ", primarySector=" + primarySector + ", website="
				+ website + "]";
	}
	
}
