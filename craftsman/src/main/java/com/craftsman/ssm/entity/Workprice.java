package com.craftsman.ssm.entity;

public class Workprice {
	private Integer workpricetbId;

	private Integer workertypetbId;

	private String workertypetbName;

	private String workpricetbName;

	private String workpricetbPriceone;

	private String workpricetbPricetwo;

	private String alternative1;

	private String alternative2;

	private String alternative3;

	public Integer getWorkpricetbId() {
		return workpricetbId;
	}

	public void setWorkpricetbId(Integer workpricetbId) {
		this.workpricetbId = workpricetbId;
	}

	public Integer getWorkertypetbId() {
		return workertypetbId;
	}

	public void setWorkertypetbId(Integer workertypetbId) {
		this.workertypetbId = workertypetbId;
	}

	public String getWorkpricetbName() {
		return workpricetbName;
	}

	public void setWorkpricetbName(String workpricetbName) {
		this.workpricetbName = workpricetbName == null ? null : workpricetbName.trim();
	}

	public String getWorkpricetbPriceone() {
		return workpricetbPriceone;
	}

	public void setWorkpricetbPriceone(String workpricetbPriceone) {
		this.workpricetbPriceone = workpricetbPriceone == null ? null : workpricetbPriceone.trim();
	}

	public String getWorkpricetbPricetwo() {
		return workpricetbPricetwo;
	}

	public void setWorkpricetbPricetwo(String workpricetbPricetwo) {
		this.workpricetbPricetwo = workpricetbPricetwo == null ? null : workpricetbPricetwo.trim();
	}

	public String getAlternative1() {
		return alternative1;
	}

	public void setAlternative1(String alternative1) {
		this.alternative1 = alternative1 == null ? null : alternative1.trim();
	}

	public String getAlternative2() {
		return alternative2;
	}

	public void setAlternative2(String alternative2) {
		this.alternative2 = alternative2 == null ? null : alternative2.trim();
	}

	public String getAlternative3() {
		return alternative3;
	}

	public void setAlternative3(String alternative3) {
		this.alternative3 = alternative3 == null ? null : alternative3.trim();
	}

	public String getWorkertypetbName() {
		return workertypetbName;
	}

	public void setWorkertypetbName(String workertypetbName) {
		this.workertypetbName = workertypetbName;
	}

	@Override
	public String toString() {
		return "Workprice [workpricetbId=" + workpricetbId + ", workertypetbId=" + workertypetbId
				+ ", workertypetbName=" + workertypetbName + ", workpricetbName=" + workpricetbName
				+ ", workpricetbPriceone=" + workpricetbPriceone + ", workpricetbPricetwo=" + workpricetbPricetwo
				+ ", alternative1=" + alternative1 + ", alternative2=" + alternative2 + ", alternative3=" + alternative3
				+ "]";
	}
}