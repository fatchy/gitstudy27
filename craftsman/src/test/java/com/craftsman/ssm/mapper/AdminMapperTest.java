package com.craftsman.ssm.mapper;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.entity.Admin;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/*.xml")
public class AdminMapperTest {
	@Autowired
	private AdminMapper adminMapper;
	@Test
	public void testGetAdmin() {
		Admin admin=new Admin();
		admin.setAdmintbName("admin");
		admin.setAdmintbPassword("admin");
		Assert.assertNotNull("查询成功",adminMapper.getAdminByAdmin(admin));
	}

}
