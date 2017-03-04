package com.craftsman.ssm.service;

import com.craftsman.ssm.bean.ShowOrdersBean;
import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.User;

public interface OrdersInfoService {
	public ShowOrdersBean getShowOrdersBean(User user);

}
