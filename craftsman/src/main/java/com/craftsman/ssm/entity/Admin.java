package com.craftsman.ssm.entity;

public class Admin {
	private Integer admintbId;

	private String admintbName;

	private String admintbPassword;

	private Integer admintbLevel;

	public Integer getAdmintbId() {
		return admintbId;
	}

	public void setAdmintbId(Integer admintbId) {
		this.admintbId = admintbId;
	}

	public String getAdmintbName() {
		return admintbName;
	}

	public void setAdmintbName(String admintbName) {
		this.admintbName = admintbName == null ? null : admintbName.trim();
	}

	public String getAdmintbPassword() {
		return admintbPassword;
	}

	public void setAdmintbPassword(String admintbPassword) {
		this.admintbPassword = admintbPassword == null ? null : admintbPassword.trim();
	}

	public Integer getAdmintbLevel() {
		return admintbLevel;
	}

	public void setAdmintbLevel(Integer admintbLevel) {
		this.admintbLevel = admintbLevel;
	}

	@Override
	public String toString() {
		return "Admin [admintbId=" + admintbId + ", admintbName=" + admintbName + ", admintbPassword=" + admintbPassword
				+ ", admintbLevel=" + admintbLevel + "]";
	}
}