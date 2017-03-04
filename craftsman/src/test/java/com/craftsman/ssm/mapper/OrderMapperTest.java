package com.craftsman.ssm.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.User;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring.xml")
public class OrderMapperTest {

	@Autowired
	private OrderMapper OrderMapper;
	@Test
	public void testDeleteByPrimaryKey() {
		OrderMapper.deleteByPrimaryKey(2);
	}

	@Test
	public void testInsert() {
		Order o=new Order();
		o.setOrdertbStatus(3);
		o.setOrdertbMoney(500.0);
		o.setOrdertbPayment(1);
		o.setUsertbId(1);
		o.setWorkertbId(1);
		OrderMapper.insert(o);
	}

	@Test
	public void testSelectByPrimaryKey() {
		System.out.println(OrderMapper.selectByPrimaryKey(1));
	}
	@Test
	public void testUpdateByPrimaryKeySelective() {
		Order o=new Order();
		o.setOrdertbId(2);
		o.setOrdertbStatus(3);
		OrderMapper.updateByPrimaryKeySelective(o);
	}

	@Test
	public void testUpdateByPrimaryKey() {
		Order o=new Order();
		o.setOrdertbId(2);
		o.setOrdertbStatus(3);
		OrderMapper.updateByPrimaryKey(o);
	
	}
	@Test
	public void testSelectByUserId() {
		User u=new User();
		u.setUsertbId(1);
		System.out.println(OrderMapper.selectByUserId(u));
	}
	@Test
	public void testSelectByPagination() {
		System.out.println(OrderMapper.selectByPagination(new Pagination()));
	}
	@Test
	public void tesgetCount() {
		System.out.println(OrderMapper.getCount());
	}

}
