package com.craftsman.ssm.service;

import com.craftsman.ssm.bean.UserBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.User;

public interface UserService {
	/*
	 * @param rows每页的行数
	 * @param page查询的页数
	 */
	public  UserBean listUser(Pagination pagination);
	public int getCount();
	public int addUser(User user);
	public User login(User user);
	public boolean check(User user);

	public boolean changePwd( User user);
	public User changeInfo( User user);
	
}
