package com.craftsman.ssm.entity;

import java.io.Serializable;
import java.util.Date;

public class ReservationInfo implements Serializable{
	
	private static final long serialVersionUID = 747780017995659240L;
	private Date firstDate;
	private Date lastDate;
	private Integer workerId;
	public ReservationInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReservationInfo(Date firstDate, Date lastDate, Integer workerId) {
		super();
		this.firstDate = firstDate;
		this.lastDate = lastDate;
		this.workerId = workerId;
	}
	public Date getFirstDate() {
		return firstDate;
	}
	public void setFirstDate(Date firstDate) {
		this.firstDate = firstDate;
	}
	public Date getLastDate() {
		return lastDate;
	}
	public void setLastDate(Date lastDate) {
		this.lastDate = lastDate;
	}
	public Integer getWorkerId() {
		return workerId;
	}
	public void setWorkerId(Integer workerId) {
		this.workerId = workerId;
	}
	@Override
	public String toString() {
		return "ReservationInfo [firstDate=" + firstDate + ", lastDate="
				+ lastDate + ", workerId=" + workerId + "]";
	}
	
	

}
