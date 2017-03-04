package com.craftsman.ssm.entity;

import java.util.Date;

public class Worker {
	private Integer workertbId;

	private String workertbName;

	private String workertypetbSex;

	private String workertbScop;

	private String workertbCadress;

	private Integer workertbExtime;

	private Integer workertypetbLevel;

	private String workertbCellphone;

	private Integer workertypetbId;
	private Date workertbAddtime;

	private String workertypetbName;

	private String workertbSecondphone;

	private String workertbSummary;

	private String workertbPhoto;

	public Integer getWorkertbId() {
		return workertbId;
	}

	public void setWorkertbId(Integer workertbId) {
		this.workertbId = workertbId;
	}

	public String getWorkertbName() {
		return workertbName;
	}

	public void setWorkertbName(String workertbName) {
		this.workertbName = workertbName == null ? null : workertbName.trim();
	}

	public String getWorkertypetbSex() {
		return workertypetbSex;
	}

	public void setWorkertypetbSex(String workertypetbSex) {
		this.workertypetbSex = workertypetbSex == null ? null : workertypetbSex.trim();
	}

	public String getWorkertbScop() {
		return workertbScop;
	}

	public void setWorkertbScop(String workertbScop) {
		this.workertbScop = workertbScop == null ? null : workertbScop.trim();
	}

	public String getWorkertbCadress() {
		return workertbCadress;
	}

	public void setWorkertbCadress(String workertbCadress) {
		this.workertbCadress = workertbCadress == null ? null : workertbCadress.trim();
	}

	public Integer getWorkertbExtime() {
		return workertbExtime;
	}

	public void setWorkertbExtime(Integer workertbExtime) {
		this.workertbExtime = workertbExtime;
	}

	public Integer getWorkertypetbLevel() {
		return workertypetbLevel;
	}

	public void setWorkertypetbLevel(Integer workertypetbLevel) {
		this.workertypetbLevel = workertypetbLevel;
	}

	public String getWorkertbCellphone() {
		return workertbCellphone;
	}

	public void setWorkertbCellphone(String workertbCellphone) {
		this.workertbCellphone = workertbCellphone == null ? null : workertbCellphone.trim();
	}

	public Integer getWorkertypetbId() {
		return workertypetbId;
	}

	public void setWorkertypetbId(Integer workertypetbId) {
		this.workertypetbId = workertypetbId;
	}

	public String getWorkertbSecondphone() {
		return workertbSecondphone;
	}

	public void setWorkertbSecondphone(String workertbSecondphone) {
		this.workertbSecondphone = workertbSecondphone == null ? null : workertbSecondphone.trim();
	}

	public String getWorkertbSummary() {
		return workertbSummary;
	}

	public void setWorkertbSummary(String workertbSummary) {
		this.workertbSummary = workertbSummary == null ? null : workertbSummary.trim();
	}

	public String getWorkertbPhoto() {
		return workertbPhoto;
	}

	public void setWorkertbPhoto(String workertbPhoto) {
		this.workertbPhoto = workertbPhoto == null ? null : workertbPhoto.trim();
	}

	public String getWorkertypetbName() {
		return workertypetbName;
	}

	public void setWorkertypetbName(String workertypetbName) {
		this.workertypetbName = workertypetbName;
	}

	@Override
	public String toString() {
		return "Worker [workertbId=" + workertbId + ", workertbName=" + workertbName + ", workertypetbSex="
				+ workertypetbSex + ", workertbScop=" + workertbScop + ", workertbCadress=" + workertbCadress
				+ ", workertbExtime=" + workertbExtime + ", workertypetbLevel=" + workertypetbLevel
				+ ", workertbCellphone=" + workertbCellphone + ", workertypetbId=" + workertypetbId
				+ ", workertbAddtime=" + workertbAddtime + ", workertypetbName=" + workertypetbName
				+ ", workertbSecondphone=" + workertbSecondphone + ", workertbSummary=" + workertbSummary
				+ ", workertbPhoto=" + workertbPhoto + "]";
	}

	public Date getWorkertbAddtime() {
		return workertbAddtime;
	}

	public void setWorkertbAddtime(Date workertbAddtime) {
		this.workertbAddtime = workertbAddtime;
	}

}