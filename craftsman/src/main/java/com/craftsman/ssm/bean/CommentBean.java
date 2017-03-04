package com.craftsman.ssm.bean;

import java.util.Date;

import com.craftsman.ssm.entity.User;

public class CommentBean {
	private Integer workercommenttbId;
	
	private User user;
	
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getWorkertbId() {
		return workertbId;
	}

	public void setWorkertbId(Integer workertbId) {
		this.workertbId = workertbId;
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

	public Integer getOrdertbId() {
		return ordertbId;
	}

	public void setOrdertbId(Integer ordertbId) {
		this.ordertbId = ordertbId;
	}

	@Override
	public String toString() {
		return "CommentBean [workercommenttbId=" + workercommenttbId
				+ ", user=" + user + ", workertbId=" + workertbId
				+ ", ordertbId=" + ordertbId + ", workercommenttbContent="
				+ workercommenttbContent + ", workercommenttbTime="
				+ workercommenttbTime + ", alternative1=" + alternative1
				+ ", alternative2=" + alternative2 + ", alternative3="
				+ alternative3 + "]";
	}

}
