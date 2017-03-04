package com.craftsman.ssm.bean;

import java.util.Arrays;


public class CityBean {
	private String district;
	private String[] street;
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String[] getStreet() {
		return street;
	}
	public void setStreet(String[] street) {
		this.street = street;
	}
	@Override
	public String toString() {
		return "CityBean [district=" + district + ", street="
				+ Arrays.toString(street) + "]";
	}
	public CityBean(String district, String[] street) {
		super();
		this.district = district;
		this.street = street;
	}
	public CityBean() {
		super();
	}
	
}
