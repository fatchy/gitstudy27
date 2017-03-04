package com.craftsman.ssm.entity;

import java.util.Date;

public class WorkerComment {
	private Integer workercommenttbId;
	
	private Integer usertbId;
	
	private Integer workertbId;
	
	private Integer ordertbId;
	
	private String workercommenttbContent;
	
	private Date workercommenttbTime;
	
	private String alternative1;
	
	private String alternative2;
	
	private String alternative3;

	public Integer getWorkercommenttbId() {
		return workercommenttbId;
	}

	public void setWorkercommenttbId(Integer workercommenttbId) {
		this.workercommenttbId = workercommenttbId;
	}

	public Integer getUsertbId() {
		return usertbId;
	}

	public void setUsertbId(Integer usertbId) {
		this.usertbId = usertbId;
	}

	public Integer getWorkertbId() {
		return workertbId;
	}

	public void setWorkertbId(Integer workertbId) {
		this.workertbId = workertbId;
	}

	public Integer getOrdertbId() {
		return ordertbId;
	}

	public void setOrdertbId(Integer ordertbId) {
		this.ordertbId = ordertbId;
	}

	public String getWorkercommenttbContent() {
		return workercommenttbContent;
	}

	public void setWorkercommenttbContent(String workercommenttbContent) {
		this.workercommenttbContent = workercommenttbContent;
	}

	public Date getWorkercommenttbTime() {
		return workercommenttbTime;
	}

	public void setWorkercommenttbTime(Date workercommenttbTime) {
		this.workercommenttbTime = workercommenttbTime;
	}

	public String getAlternative1() {
		return alternative1;
	}

	public void setAlternative1(String alternative1) {
		this.alternative1 = alternative1;
	}

	public String getAlternative2() {
		return alternative2;
	}

	public void setAlternative2(String alternative2) {
		this.alternative2 = alternative2;
	}

	public String getAlternative3() {
		return alternative3;
	}

	public void setAlternative3(String alternative3) {
		this.alternative3 = alternative3;
	}

	@Override
	public String toString() {
		return "WorkerComment [workercommenttbId=" + workercommenttbId
				+ ", usertbId=" + usertbId + ", workertbId=" + workertbId
				+ ", ordertbId=" + ordertbId + ", workercommenttbContent="
				+ workercommenttbContent + ", workercommenttbTime="
				+ workercommenttbTime + ", alternative1=" + alternative1
				+ ", alternative2=" + alternative2 + ", alternative3="
				+ alternative3 + "]";
	}
}
