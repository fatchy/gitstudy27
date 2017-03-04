package com.craftsman.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.craftsman.ssm.bean.DetermineOrderItemBean;
import com.craftsman.ssm.entity.OrderItem;
import com.craftsman.ssm.mapper.OrderItemMapper;
import com.craftsman.ssm.service.DetermineOrderItemService;
@Service("determineOrderItemService")
public class DetermineOrderItemServiceImpl implements DetermineOrderItemService {
	@Autowired
	private OrderItemMapper orderItemMapper;
	public int updateOrderItems(DetermineOrderItemBean determineOrderItemBean) {
		List<OrderItem> orderItems=parseToOrderItems(determineOrderItemBean);
		int rows=0;
		for(OrderItem oi:orderItems){
			rows+=orderItemMapper.updateByPrimaryKeySelective(oi);
		}
		return rows;
	}
	
	private List<OrderItem> parseToOrderItems(DetermineOrderItemBean determineOrderItemBean){
		List<OrderItem> orderItems=new ArrayList<OrderItem>();
		String content;
		OrderItem orderItem1=new OrderItem();
		orderItem1.setOrderitemtbName("服务项目");
		content=determineOrderItemBean.getServiceName();
		orderItem1.setOrderitemtbContent(content);
		orderItem1.setOrdercontenttbId(determineOrderItemBean.getOrdercontentid());
		orderItem1.setOrderitemtbId(determineOrderItemBean.getOrderItemids());
		orderItems.add(orderItem1);
		
		OrderItem orderItem2=new OrderItem();
		orderItem2.setOrderitemtbName("数量");
		content=determineOrderItemBean.getServiceNum();
		orderItem2.setOrderitemtbContent(content);
		orderItem2.setOrdercontenttbId(determineOrderItemBean.getOrdercontentid());
		orderItem2.setOrderitemtbId(determineOrderItemBean.getOrderItemids()+1);
		orderItems.add(orderItem2);
		
		OrderItem orderItem3=new OrderItem();
		orderItem3.setOrderitemtbName("价格");
		content=determineOrderItemBean.getServicePrice();
		orderItem3.setOrderitemtbContent(content);
		orderItem3.setOrdercontenttbId(determineOrderItemBean.getOrdercontentid());
		orderItem3.setOrderitemtbId(determineOrderItemBean.getOrderItemids()+2);
		orderItems.add(orderItem3);
		
		OrderItem orderItem4=new OrderItem();
		orderItem4.setOrderitemtbName("总价");
		content=determineOrderItemBean.getServiceTatolPrice();
		orderItem4.setOrderitemtbContent(content);
		orderItem4.setOrdercontenttbId(determineOrderItemBean.getOrdercontentid());
		orderItem4.setOrderitemtbId(determineOrderItemBean.getOrderItemids()+3);
		orderItems.add(orderItem4);
		
		OrderItem orderItem5=new OrderItem();
		orderItem5.setOrderitemtbName("订单联系人");
		content=determineOrderItemBean.getServiceUserName();
		orderItem5.setOrderitemtbContent(content);
		orderItem5.setOrdercontenttbId(determineOrderItemBean.getOrdercontentid());
		orderItem5.setOrderitemtbId(determineOrderItemBean.getOrderItemids()+4);
		orderItems.add(orderItem5);
		
		OrderItem orderItem6=new OrderItem();
		orderItem6.setOrderitemtbName("服务地址");
		content=determineOrderItemBean.getServiceAddress();
		orderItem6.setOrderitemtbContent(content);
		orderItem6.setOrdercontenttbId(determineOrderItemBean.getOrdercontentid());
		orderItem6.setOrderitemtbId(determineOrderItemBean.getOrderItemids()+5);
		orderItems.add(orderItem6);
		
		OrderItem orderItem7=new OrderItem();
		orderItem7.setOrderitemtbName("服务时间");
		content=determineOrderItemBean.getServiceDate();
		orderItem7.setOrderitemtbContent(content);
		orderItem7.setOrdercontenttbId(determineOrderItemBean.getOrdercontentid());
		orderItem7.setOrderitemtbId(determineOrderItemBean.getOrderItemids()+6);
		orderItems.add(orderItem7);
		
		OrderItem orderItem8=new OrderItem();
		orderItem8.setOrderitemtbName("联系方式");
		content=determineOrderItemBean.getServiceUserPhone();
		orderItem8.setOrderitemtbContent(content);
		orderItem8.setOrdercontenttbId(determineOrderItemBean.getOrdercontentid());
		orderItem8.setOrderitemtbId(determineOrderItemBean.getOrderItemids()+7);
		orderItems.add(orderItem8);
		
		return orderItems;
	}

}
