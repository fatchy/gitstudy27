package com.craftsman.ssm.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.entity.User;
import com.craftsman.ssm.service.OrdersInfoService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/*.xml")
public class OrdersInfoServiceImplTest {
	@Autowired
	private OrdersInfoService ordersInfoService;
	@Test
	public void testGetShowOrdersBean() {
		User user=new User();
		user.setUsertbId(1);
		System.out.println(ordersInfoService.getShowOrdersBean(user));
	}

}
