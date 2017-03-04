package com.craftsman.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.craftsman.ssm.bean.ShowOrdersBean;
import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.OrderInfo;
import com.craftsman.ssm.entity.User;
import com.craftsman.ssm.mapper.OrderMapper;
import com.craftsman.ssm.service.OrdersInfoService;
@Service("ordersInfoService")
public class OrdersInfoServiceImpl implements OrdersInfoService {
	@Autowired
	private OrderMapper orderMapper;
	private List<OrderInfo> ordersInfo;//所有的订单的信息
	private List<OrderInfo> ordersByDealing;//正在处理的所有订单信息
	private List<OrderInfo> ordersByDealed;//已经处理完的所有订单信息
	private List<OrderInfo> ordersNoEvaluation;//带评价的所有订单信息
	
	public ShowOrdersBean getShowOrdersBean(User user) {
		ShowOrdersBean showOrdersBean=new ShowOrdersBean();
		ordersInfo=orderMapper.selectByUserId(user);
		showOrdersBean.setOrders(ordersInfo);
		ordersByDealing=getOrdersByDealed(ordersInfo);
		showOrdersBean.setOrdersByDealing(ordersByDealing);
		ordersByDealed=getOrdersByDealed(ordersInfo);
		showOrdersBean.setOrdersByDealed(ordersByDealed);
		ordersNoEvaluation=getOrdersNoEvaluation(ordersInfo);
		showOrdersBean.setOrdersNoEvaluation(ordersNoEvaluation);
		return showOrdersBean;
	}
	/**
	 * 获取正在处理的所有的订单信息
	 * @param ordersInfo
	 * @return
	 */
	private List<OrderInfo> getOrdersByDealing(List<OrderInfo> ordersInfo){
		List<OrderInfo> ordersByDealing=new ArrayList<OrderInfo>();
		for(OrderInfo oi:ordersInfo){
			if(oi.getOrdertbStatus()==3){
				ordersByDealing.add(oi);
			}
		}
		return ordersByDealing;
	}
	/**
	 * 获取已经处理完的所有的订单信息
	 * @param ordersInfo
	 * @return
	 */
	private List<OrderInfo> getOrdersByDealed(List<OrderInfo> ordersInfo){
		List<OrderInfo> ordersByDealed=new ArrayList<OrderInfo>();
		for(OrderInfo oi:ordersInfo){
			if(oi.getOrdertbStatus()==4){
				ordersByDealed.add(oi);
			}
		}
		return ordersByDealed;
	}
	/**
	 * 获取带评价的所有订单的消息
	 * @param ordersInfo
	 * @return
	 */
	private List<OrderInfo> getOrdersNoEvaluation(List<OrderInfo> ordersInfo){
		List<OrderInfo> ordersNoEvaluation=new ArrayList<OrderInfo>();
		for(OrderInfo oi:ordersInfo){
			if(oi.getOrdertbEvalstate()==1){
				ordersNoEvaluation.add(oi);
			}
		}
		return ordersNoEvaluation;
	}

}
