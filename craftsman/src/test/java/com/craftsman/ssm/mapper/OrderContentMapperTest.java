package com.craftsman.ssm.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring.xml")
public class OrderContentMapperTest {

	@Autowired
	private OrderContentMapper orderContentMapper;
	@Test
	public void testSelectByOrderId() {
		System.out.println(orderContentMapper.selectByOrderId(1));
	}
	@Test
	public void testInsert(){
		
	}

}
