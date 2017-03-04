package com.craftsman.ssm.entity;

import java.util.Date;

public class Reservation {
	private Integer reservationtbId;

	private Date reservationtbDate;

	private Integer reservationtbPeriod;

	private Integer ordertbId;

	private Integer workertbId;

	private String workertbName;

	public Integer getReservationtbId() {
		return reservationtbId;
	}

	public void setReservationtbId(Integer reservationtbId) {
		this.reservationtbId = reservationtbId;
	}

	public Date getReservationtbDate() {
		return reservationtbDate;
	}

	public void setReservationtbDate(Date reservationtbDate) {
		this.reservationtbDate = reservationtbDate;
	}

	public Integer getReservationtbPeriod() {
		return reservationtbPeriod;
	}

	public void setReservationtbPeriod(Integer reservationtbPeriod) {
		this.reservationtbPeriod = reservationtbPeriod;
	}

	public Integer getOrdertbId() {
		return ordertbId;
	}

	public void setOrdertbId(Integer ordertbId) {
		this.ordertbId = ordertbId;
	}

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
		this.workertbName = workertbName;
	}

	@Override
	public String toString() {
		return "Reservation [reservationtbId=" + reservationtbId + ", reservationtbDate=" + reservationtbDate
				+ ", reservationtbPeriod=" + reservationtbPeriod + ", ordertbId=" + ordertbId + ", workertbId="
				+ workertbId + ", workertbName=" + workertbName + "]";
	}

}