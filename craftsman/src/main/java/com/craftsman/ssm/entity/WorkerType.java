package com.craftsman.ssm.entity;

import java.io.Serializable;

public class WorkerType implements Serializable {

	private static final long serialVersionUID = 6555716874113405849L;

	private Integer workertypetbId;

	private String workertypetbName;

	private String workertypetbSummary;

	private String workertypetbPic;

	public Integer getWorkertypetbId() {
		return workertypetbId;
	}

	public void setWorkertypetbId(Integer workertypetbId) {
		this.workertypetbId = workertypetbId;
	}

	public String getWorkertypetbName() {
		return workertypetbName;
	}

	public void setWorkertypetbName(String workertypetbName) {
		this.workertypetbName = workertypetbName == null ? null : workertypetbName.trim();
	}

	public String getWorkertypetbSummary() {
		return workertypetbSummary;
	}

	public void setWorkertypetbSummary(String workertypetbSummary) {
		this.workertypetbSummary = workertypetbSummary == null ? null : workertypetbSummary.trim();
	}

	public String getWorkertypetbPic() {
		return workertypetbPic;
	}

	public void setWorkertypetbPic(String workertypetbPic) {
		this.workertypetbPic = workertypetbPic == null ? null : workertypetbPic.trim();
	}

	@Override
	public String toString() {
		return "WorkerType [workertypetbId=" + workertypetbId + ", workertypetbName=" + workertypetbName
				+ ", workertypetbSummary=" + workertypetbSummary + ", workertypetbPic=" + workertypetbPic + "]";
	}

}