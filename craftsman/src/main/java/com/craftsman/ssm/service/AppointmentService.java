package com.craftsman.ssm.service;

import java.util.Map;

import com.craftsman.ssm.bean.AppointmentInfoBean;
import com.craftsman.ssm.bean.OrderBean;

public interface AppointmentService {
	/**
	 * 插入预约订单
	 * @param orderBean
	 * @param session
	 * @return
	 */
	public int appointmentOrder(OrderBean orderBean,Map<String,Object> session);
	/**
	 * 生成orderBean
	 */
	public OrderBean createOrderBean(AppointmentInfoBean appointmentInfoBean);

}
