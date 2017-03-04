package com.craftsman.ssm.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.bean.OrderBean;
import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.OrderContent;
import com.craftsman.ssm.entity.OrderItem;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.service.OrderService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/*.xml")
public class OrderServiceImplTest {
	@Autowired
	private OrderService orderService;

	@Test
	public void testQuickorder() {
		OrderBean o = new OrderBean();
		Order record = new Order();
		record.setUsertbId(1);
		record.setWorkertbId(1);
		record.setOrdertbMoney(300.0);
		record.setOrdertbPayment(1);
		record.setOrdertbStatus(1);
		record.setOrdertbStarttime(new Date());
		o.setOrder(record);
		OrderContent orderContent = new OrderContent();
		orderContent.setOrdertbId(record.getOrdertbId());
		o.setOrderContent(orderContent);
		OrderItem orderItem1 = new OrderItem();
		orderItem1.setOrdercontenttbId(orderContent.getOrdercontenttbId());
		orderItem1.setOrderitemtbName("地址");
		orderItem1.setOrderitemtbContent("闵行区");
		orderItem1.setServiceTime(1);
		o.getOrderContent().getOrderitem().add(orderItem1);
		OrderItem orderItem2 = new OrderItem();
		orderItem2.setOrdercontenttbId(1000);
		orderItem2.setOrderitemtbName("时间");
		orderItem2.setOrderitemtbContent(new Date().toString());
		orderItem2.setServiceTime(1);
		o.getOrderContent().getOrderitem().add(orderItem2);
		Map<String, Object> session = new HashMap<String, Object>();
		System.out.println(orderService.quickorder(o, session));
	}

	@Test
	public void testlistByPagination() {
		System.out.println(orderService.listByPagination(new Pagination()));
	}

	@Test
	public void testfindDetailByOrderId() {
		System.out.println(orderService.findDetailByOrderId(1));
	}
}
