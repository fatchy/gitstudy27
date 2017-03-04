package com.craftsman.ssm.entity;

import java.io.Serializable;

public class OrderItem implements Serializable{

	private static final long serialVersionUID = -9214798675649984686L;

	private Integer orderitemtbId;

    private Integer ordercontenttbId;

    private String orderitemtbName;

    private String orderitemtbContent;
    private Integer serviceTime;
    private String serviceDate;

    

	public String getServiceDate() {
		return serviceDate;
	}

	public void setServiceDate(String serviceDate) {
		this.serviceDate = serviceDate;
	}

	public Integer getServiceTime() {
		return serviceTime;
	}

	public void setServiceTime(Integer serviceTime) {
		this.serviceTime = serviceTime;
	}

	public Integer getOrderitemtbId() {
        return orderitemtbId;
    }

    public void setOrderitemtbId(Integer orderitemtbId) {
        this.orderitemtbId = orderitemtbId;
    }

    public Integer getOrdercontenttbId() {
        return ordercontenttbId;
    }

    public void setOrdercontenttbId(Integer ordercontenttbId) {
        this.ordercontenttbId = ordercontenttbId;
    }

    public String getOrderitemtbName() {
        return orderitemtbName;
    }

    public void setOrderitemtbName(String orderitemtbName) {
        this.orderitemtbName = orderitemtbName == null ? null : orderitemtbName.trim();
    }

    public String getOrderitemtbContent() {
        return orderitemtbContent;
    }

    public void setOrderitemtbContent(String orderitemtbContent) {
        this.orderitemtbContent = orderitemtbContent == null ? null : orderitemtbContent.trim();
    }

	@Override
	public String toString() {
		return "OrderItem [orderitemtbId=" + orderitemtbId
				+ ", ordercontenttbId=" + ordercontenttbId
				+ ", orderitemtbName=" + orderitemtbName
				+ ", orderitemtbContent=" + orderitemtbContent
				+ ", serviceTime=" + serviceTime + ", serviceDate="
				+ serviceDate + "]";
	}

	

	


}