package com.craftsman.ssm.bean;

import java.util.List;

import com.craftsman.ssm.entity.OrderInfo;

public class ShowOrdersBean {
	private List<OrderInfo> orders;//所有的订单的信息
	private List<OrderInfo> ordersByDealing;//正在处理的所有订单信息
	private List<OrderInfo> ordersByDealed;//已经处理完的所有订单信息
	private List<OrderInfo> ordersNoEvaluation;//带评价的所有订单信息
	public ShowOrdersBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShowOrdersBean(List<OrderInfo> orders,
			List<OrderInfo> ordersByDealing, List<OrderInfo> ordersByDealed,
			List<OrderInfo> ordersNoEvaluation) {
		super();
		this.orders = orders;
		this.ordersByDealing = ordersByDealing;
		this.ordersByDealed = ordersByDealed;
		this.ordersNoEvaluation = ordersNoEvaluation;
	}
	public List<OrderInfo> getOrders() {
		return orders;
	}
	public void setOrders(List<OrderInfo> orders) {
		this.orders = orders;
	}
	public List<OrderInfo> getOrdersByDealing() {
		return ordersByDealing;
	}
	public void setOrdersByDealing(List<OrderInfo> ordersByDealing) {
		this.ordersByDealing = ordersByDealing;
	}
	public List<OrderInfo> getOrdersByDealed() {
		return ordersByDealed;
	}
	public void setOrdersByDealed(List<OrderInfo> ordersByDealed) {
		this.ordersByDealed = ordersByDealed;
	}
	public List<OrderInfo> getOrdersNoEvaluation() {
		return ordersNoEvaluation;
	}
	public void setOrdersNoEvaluation(List<OrderInfo> ordersNoEvaluation) {
		this.ordersNoEvaluation = ordersNoEvaluation;
	}
	@Override
	public String toString() {
		return "ShowOrdersBean [orders=" + orders + ", ordersByDealing="
				+ ordersByDealing + ", ordersByDealed=" + ordersByDealed
				+ ", ordersNoEvaluation=" + ordersNoEvaluation + "]";
	}
	

	
	
	

}
