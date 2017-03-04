package com.craftsman.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.craftsman.ssm.entity.UserAddress;
import com.craftsman.ssm.mapper.UserAddressMapper;
import com.craftsman.ssm.service.UserAddressService;

@Service("userAddressService")
public class UserAddressServiceImpl implements UserAddressService {
	@Autowired
	private UserAddressMapper userAddressMapper;
	
	
	public boolean changeAddress(List<UserAddress> list) {
		for(UserAddress ua: list){
			userAddressMapper.insertSelective(ua);
		}
		return true;
	}


	public List<UserAddress> getAddressByUserTbId(Integer userId) {
		List<UserAddress> list=userAddressMapper.selectByUserTbKey(userId);
		return list;
	}


}
