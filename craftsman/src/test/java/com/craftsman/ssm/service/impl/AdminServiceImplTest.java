package com.craftsman.ssm.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.entity.Admin;
import com.craftsman.ssm.mapper.AdminMapper;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/*.xml")
public class AdminServiceImplTest {
	@Autowired
	private AdminServiceImpl adminServiceImpl;
	@Test
	public void testGetAdmin() {
		Admin admin=new Admin();
		admin.setAdmintbName("admin");
		admin.setAdmintbPassword("admin");
		System.out.println(adminServiceImpl.getAdmin(admin));
	}

}
