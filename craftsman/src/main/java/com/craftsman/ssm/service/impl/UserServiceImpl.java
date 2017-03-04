package com.craftsman.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.craftsman.ssm.bean.UserBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.User;
import com.craftsman.ssm.mapper.UserMapper;
import com.craftsman.ssm.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	private UserBean userBean;

	public UserBean listUser(Pagination pagination) {
		userBean = new UserBean();
		userBean.setTotal(getCount());
		pagination.setTotal(userBean.getTotal());
		pagination.setParamMin();
		List<User> list = userMapper.listUser(pagination);
		userBean.setRows(list);
		return userBean;
	}

	public int getCount() {

		return userMapper.getCount();
	}

	public User login(User user) {

		return userMapper.findUserByUser(user);
	}

	public int addUser(User user) {

		return userMapper.addUser(user);

	}

	public boolean check(User user) {
		user = userMapper.findUserByUser(user);
		if (user != null) {
			return true;
		}

		return false;
	}
	public boolean changePwd(User user) {
		int result = userMapper.updatePwd(user);
		if (result >0) {
			return true;
		}
		return false;
	}

	public User changeInfo(User user) {
		User updateUser=null;
		int result = userMapper.updateInfo(user);
		if (result >0) {
			updateUser=userMapper.findUserByUser(user);
		}
		return updateUser;
	}

}
