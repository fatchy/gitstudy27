package com.craftsman.ssm.service;

import java.util.Map;

import com.craftsman.ssm.bean.DemandInfoBean;
import com.craftsman.ssm.bean.OrderBean;
import com.craftsman.ssm.bean.OrderDetailBean;
import com.craftsman.ssm.bean.PaginationBean;
import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.OrderItem;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Worker;

public interface OrderService {
	/**
	 * 分页查询订单信息
	 */
	PaginationBean<Order> listByPagination(Pagination pagination);
	
	/**
	 * 查询订单详情
	 * 
	 */
	OrderDetailBean findDetailByOrderId(Integer orderid);
	/*
	 * 修改订单
	 */
	
	public int update(Order order);
	/*
	 * 删除订单
	 */
	int deleteByOrderid(int orderid);
	

	public int quickorder(OrderBean orderBean,Map<String,Object> session);
	/**
	 * 通过客户提交的需求信息匹配工人
	 * @param ddb
	 * @return
	 */
	public Worker selectWorkerByDemandInfo(DemandInfoBean ddb);
	/**
	 * 将响应的时间段转化为对应的标识符
	 */
	public Integer reservationperiodToInteger(String reservationperiod);
	/**
	 * 获取匹配服务的工人id
	 */
	public Integer getWorkerId(DemandInfoBean demandInfo);
	/**
	 * 生成orderBean
	 */
	public OrderBean createOrderBean(DemandInfoBean demandInfo);
}
