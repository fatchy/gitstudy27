package com.craftsman.ssm.entity;

import java.util.Date;

public class User {
	private Integer usertbId;

	private String usertbName;

	private String usertbPassword;

	private String usertbCellphone;

	private String usertbQq;

	private String usertbWeixin;

	private String usertbEmail;

	private String usertbHeadpic;
	
	private String usertbSex;
	
	private Integer usertbStatus;

	private Date usertbRegtime;

	public User() {
	}

	public User(String usertbName, String usertbPassword) {
		super();
		this.usertbName = usertbName;
		this.usertbPassword = usertbPassword;
	}

	public Integer getUsertbId() {
		return usertbId;
	}

	public void setUsertbId(Integer usertbId) {
		this.usertbId = usertbId;
	}

	public String getUsertbName() {
		return usertbName;
	}

	public void setUsertbName(String usertbName) {
		this.usertbName = usertbName == null ? null : usertbName.trim();
	}

	public String getUsertbPassword() {
		return usertbPassword;
	}

	public void setUsertbPassword(String usertbPassword) {
		this.usertbPassword = usertbPassword == null ? null : usertbPassword.trim();
	}

	public String getUsertbCellphone() {
		return usertbCellphone;
	}

	public void setUsertbCellphone(String usertbCellphone) {
		this.usertbCellphone = usertbCellphone == null ? null : usertbCellphone.trim();
	}

	public String getUsertbQq() {
		return usertbQq;
	}

	public void setUsertbQq(String usertbQq) {
		this.usertbQq = usertbQq == null ? null : usertbQq.trim();
	}

	public String getUsertbWeixin() {
		return usertbWeixin;
	}

	public void setUsertbWeixin(String usertbWeixin) {
		this.usertbWeixin = usertbWeixin == null ? null : usertbWeixin.trim();
	}

	public String getUsertbEmail() {
		return usertbEmail;
	}

	public void setUsertbEmail(String usertbEmail) {
		this.usertbEmail = usertbEmail == null ? null : usertbEmail.trim();
	}

	public String getUsertbHeadpic() {
		return usertbHeadpic;
	}

	public void setUsertbHeadpic(String usertbHeadpic) {
		this.usertbHeadpic = usertbHeadpic == null ? null : usertbHeadpic.trim();
	}

	public Date getUsertbRegtime() {
		return usertbRegtime;
	}

	public void setUsertbRegtime(Date usertbRegtime) {
		this.usertbRegtime = usertbRegtime;
	}

	public String getUsertbSex() {
		return usertbSex;
	}

	public void setUsertbSex(String usertbSex) {
		this.usertbSex = usertbSex == null ? null : usertbSex.trim();
	}

	public Integer getUsertbStatus() {
		return usertbStatus;
	}

	public void setUsertbStatus(Integer usertbStatus) {
		this.usertbStatus = usertbStatus;
	}

	@Override
	public String toString() {
		return "User [usertbId=" + usertbId + ", usertbName=" + usertbName + ", usertbPassword=" + usertbPassword
				+ ", usertbCellphone=" + usertbCellphone + ", usertbQq=" + usertbQq + ", usertbWeixin=" + usertbWeixin
				+ ", usertbEmail=" + usertbEmail + ", usertbHeadpic=" + usertbHeadpic + ", usertbSex=" + usertbSex
				+ ", usertbStatus=" + usertbStatus + ", usertbRegtime=" + usertbRegtime + "]";
	}

}