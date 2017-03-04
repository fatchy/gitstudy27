package com.craftsman.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.craftsman.ssm.entity.Admin;
import com.craftsman.ssm.mapper.AdminMapper;
import com.craftsman.ssm.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper adminMapper;

	public Admin getAdmin(Admin admin) {
		admin = adminMapper.getAdminByAdmin(admin);

		return admin;
	}

}
