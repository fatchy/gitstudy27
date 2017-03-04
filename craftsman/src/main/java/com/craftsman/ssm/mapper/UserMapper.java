package com.craftsman.ssm.mapper;

import java.util.List;

import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.User;

public interface UserMapper {
	List<User> listUser(Pagination pagination);

	User findUserByUser(User user);

	int addUser(User user);

	int getCount();

	int updateByPrimaryKeySelective(User record);

	int updateByPrimaryKey(User record);

	int insert(User record);

	int insertSelective(User record);
	

	int updatePwd(User user);
	int updateInfo(User user);
	

}