package com.craftsman.ssm.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/*.xml")
public class UserMapperTest {
	@Autowired
	private UserMapper userMapper;

	@Test
	public void testListUser() {
		System.out.println(userMapper.listUser(new Pagination(1,5)));
	}

	@Test
	public void testGetCount() {
		System.out.println(userMapper.getCount());
	}

	@Test
	public void testfindUserByUser() {
		User user = new User();
		// user.setUsertbName("a");
		// user.setUsertbPassword("a");
		// Assert.assertNotNull("测试失败",userMapper.findUserByUser(user));
		user.setUsertbEmail("1952593993@qq.com");
		// user.setUsertbName("a");
		user.setUsertbPassword(null);
		System.out.println(userMapper.findUserByUser(user));
	}

	@Test
	public void testAddUser() {
		User user = new User();
		user.setUsertbName("afdafa");
		user.setUsertbPassword("aa");
		user.setUsertbEmail("ww43456@qq.com");
		System.out.println(userMapper.addUser(user));

	}

}
