package com.craftsman.ssm.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class OrderContent implements Serializable {

	private static final long serialVersionUID = 2229687213083703211L;

	private Integer ordercontenttbId;

	private Integer ordertbId;

	private List<OrderItem> orderitem ;

	

	public List<OrderItem> getOrderitem() {
		return orderitem;
	}

	public void setOrderitem(List<OrderItem> orderitem) {
		this.orderitem = orderitem;
	}

	public Integer getOrdercontenttbId() {
		return ordercontenttbId;
	}

	public void setOrdercontenttbId(Integer ordercontenttbId) {
		this.ordercontenttbId = ordercontenttbId;
	}

	public Integer getOrdertbId() {
		return ordertbId;
	}

	public void setOrdertbId(Integer ordertbId) {
		this.ordertbId = ordertbId;
	}

	@Override
	public String toString() {
		return "OrderContent [ordercontenttbId=" + ordercontenttbId + ", ordertbId=" + ordertbId + ", orderitem="
				+ orderitem + "]";
	}

}