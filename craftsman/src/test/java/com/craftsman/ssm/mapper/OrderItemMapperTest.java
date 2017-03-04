package com.craftsman.ssm.mapper;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.entity.OrderContent;
import com.craftsman.ssm.entity.OrderItem;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring.xml")
public class OrderItemMapperTest {

	@Autowired
	private OrderItemMapper orderItemMapper;
	@Test
	public void testDeleteByPrimaryKey() {
		System.out.println(orderItemMapper.selectByPrimaryKey(1));
	}

	@Test
	public void testInsert() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectByPrimaryKey() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateByPrimaryKeySelective() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateByPrimaryKey() {
		fail("Not yet implemented");
	}

	@Test
	public void testListInsert() {
		List<OrderItem> list=new ArrayList<OrderItem>();
		for(int i=0;i<=5;i++){
			OrderItem o1=new OrderItem();
			o1.setOrdercontenttbId(2);
			o1.setOrderitemtbName("a"+i);
			o1.setOrderitemtbContent("a"+i);
			list.add(o1);
		}
	
		orderItemMapper.listInsert(list);	
		
	}
	@Test
	public void testselectByContentId() {
		
		System.out.println(orderItemMapper.selectByCountId(4));
	}


}
