package com.craftsman.ssm.entity;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable {

	private static final long serialVersionUID = -4397999612487020278L;

	private Integer ordertbId;

	private Integer usertbId;

	private String usertbName;

	private Integer workertbId;

	private String workertbName;

	private Integer ordertbStatus;

	private Integer ordertbPaystatus;// 付款状态

	private Integer ordertbEvalstate;// 评论状态

	private Integer ordertbPayment;

	private Double ordertbMoney;

	private Date ordertbStarttime;

	private Date ordertbEndtime;

	public Integer getOrdertbId() {
		return ordertbId;
	}

	public void setOrdertbId(Integer ordertbId) {
		this.ordertbId = ordertbId;
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
		this.usertbName = usertbName;
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

	public Integer getOrdertbStatus() {
		return ordertbStatus;
	}

	public void setOrdertbStatus(Integer ordertbStatus) {
		this.ordertbStatus = ordertbStatus;
	}

	public Integer getOrdertbPayment() {
		return ordertbPayment;
	}

	public void setOrdertbPayment(Integer ordertbPayment) {
		this.ordertbPayment = ordertbPayment;
	}

	public Double getOrdertbMoney() {
		return ordertbMoney;
	}

	public void setOrdertbMoney(Double ordertbMoney) {
		this.ordertbMoney = ordertbMoney;
	}

	public Date getOrdertbStarttime() {
		return ordertbStarttime;
	}

	public void setOrdertbStarttime(Date ordertbStarttime) {
		this.ordertbStarttime = ordertbStarttime;
	}

	public Date getOrdertbEndtime() {
		return ordertbEndtime;
	}

	public void setOrdertbEndtime(Date ordertbEndtime) {
		this.ordertbEndtime = ordertbEndtime;
	}

	public Integer getOrdertbPaystatus() {
		return ordertbPaystatus;
	}

	public void setOrdertbPaystatus(Integer ordertbPaystatus) {
		this.ordertbPaystatus = ordertbPaystatus;
	}

	public Integer getOrdertbEvalstate() {
		return ordertbEvalstate;
	}

	public void setOrdertbEvalstate(Integer ordertbEvalstate) {
		this.ordertbEvalstate = ordertbEvalstate;
	}

	@Override
	public String toString() {
		return "Order [ordertbId=" + ordertbId + ", usertbId=" + usertbId + ", usertbName=" + usertbName
				+ ", workertbId=" + workertbId + ", workertbName=" + workertbName + ", ordertbStatus=" + ordertbStatus
				+ ", ordertbPaystatus=" + ordertbPaystatus + ", ordertbEvalstate=" + ordertbEvalstate
				+ ", ordertbPayment=" + ordertbPayment + ", ordertbMoney=" + ordertbMoney + ", ordertbStarttime="
				+ ordertbStarttime + ", ordertbEndtime=" + ordertbEndtime + "]";
	}

}