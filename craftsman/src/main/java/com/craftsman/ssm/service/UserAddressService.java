package com.craftsman.ssm.service;

import java.util.List;

import com.craftsman.ssm.bean.UserBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.User;
import com.craftsman.ssm.entity.UserAddress;

public interface UserAddressService {
	
	
	public boolean changeAddress(List<UserAddress> list);
	public List<UserAddress> getAddressByUserTbId(Integer userId);
}
