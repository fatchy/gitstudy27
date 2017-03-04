package com.craftsman.ssm.service;

import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.OrderContent;
import com.craftsman.ssm.entity.OrderItem;

public interface OrderContentService {
	int quickorder(Order order,OrderItem orderItem2,
			OrderItem orderItem3,OrderItem orderItem4,OrderItem orderItem5);
}
