package com.craftsman.ssm.bean;

import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.OrderContent;

public class OrderBean {
	private OrderContent orderContent;
	private Order order;
	public OrderContent getOrderContent() {
		return orderContent;
	}
	public void setOrderContent(OrderContent orderContent) {
		this.orderContent = orderContent;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	@Override
	public String toString() {
		return "OrderBean1 [orderContent=" + orderContent + ", order=" + order + "]";
	}
		
}
