package com.craftsman.ssm.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.craftsman.ssm.bean.AppointmentInfoBean;
import com.craftsman.ssm.bean.DemandInfoBean;
import com.craftsman.ssm.bean.OrderBean;
import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.OrderContent;
import com.craftsman.ssm.entity.OrderItem;
import com.craftsman.ssm.entity.Reservation;
import com.craftsman.ssm.mapper.OrderContentMapper;
import com.craftsman.ssm.mapper.OrderItemMapper;
import com.craftsman.ssm.mapper.OrderMapper;
import com.craftsman.ssm.service.AppointmentService;
import com.craftsman.ssm.service.ReservationService;
@Service("appointmentService")
public class AppointmentServiceImpl implements AppointmentService {
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private OrderContentMapper orderContentMapper;
	@Autowired
	private OrderItemMapper orderItemMapper;
	@Autowired
	private ReservationService reservationService;
	@Transactional
	public int appointmentOrder(OrderBean orderBean, Map<String, Object> session) {
		Order order=orderBean.getOrder();
		orderMapper.insert(order);
		OrderContent orderContent=orderBean.getOrderContent();
		orderContent.setOrdertbId(order.getOrdertbId());
		session.put("orderid", order.getOrdertbId());
		orderContentMapper.insert(orderContent);
		session.put("ordercontenttbId", orderContent.getOrdercontenttbId());
		Reservation reservation=new Reservation();
		List<Integer> orderItemIds=new ArrayList<Integer>();
		
		for(OrderItem oi:orderContent.getOrderitem()){
			oi.setOrdercontenttbId(orderContent.getOrdercontenttbId());
			Integer reservationtbPeriod=oi.getServiceTime();
			reservation.setOrdertbId(order.getOrdertbId());
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String strDate = oi.getServiceDate();
			Date date;
			try {
				date = sdf.parse(strDate);
				reservation.setReservationtbDate(date);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			reservation.setReservationtbPeriod(reservationtbPeriod);
			reservation.setWorkertbId(order.getWorkertbId());
			
			orderItemMapper.insertSelective(oi);
			orderItemIds.add(oi.getOrderitemtbId());
			
		}
		session.put("orderItemIds", orderItemIds);
		reservationService.insertReservation(reservation);
		
		return 1;
	}

	public OrderBean createOrderBean(AppointmentInfoBean appointmentInfoBean) {
		Order order=createOrder(appointmentInfoBean);
		List<OrderItem> orderItems=createListOfOrderItem(appointmentInfoBean);
		OrderContent orderContent=new OrderContent();
		orderContent.setOrderitem(orderItems);
		OrderBean orderBean=new OrderBean();
		orderBean.setOrder(order);
		orderBean.setOrderContent(orderContent);
		return orderBean;
	}
	
	private Order createOrder(AppointmentInfoBean appointmentInfoBean) {
		Order order=new Order();
		order.setOrdertbStarttime(new Date());
		order.setOrdertbMoney(appointmentInfoBean.getServiceSearchTotalPrice());
		order.setOrdertbStatus(1);
		order.setOrdertbEvalstate(1);
		order.setOrdertbPaystatus(0);
		order.setUsertbId(appointmentInfoBean.getUserId());
		order.setWorkertbId(appointmentInfoBean.getWorkerId());
		return order;
	}
	private List<OrderItem> createListOfOrderItem(AppointmentInfoBean appointmentInfoBean) {
		List<OrderItem> orderItems=new ArrayList<OrderItem>();
		String content;
		OrderItem orderItem1=new OrderItem();
		orderItem1.setOrderitemtbName("服务项目");
		content=appointmentInfoBean.getServiceSearchInput();
		orderItem1.setOrderitemtbContent(content);
		orderItem1.setServiceTime(reservationperiodToInteger(appointmentInfoBean.getServiceTime()));
		orderItem1.setServiceDate(appointmentInfoBean.getServiceDate());
		orderItems.add(orderItem1);
		OrderItem orderItem2=new OrderItem();
		orderItem2.setOrderitemtbName("数量");
		content=appointmentInfoBean.getServiceNum().toString();
		orderItem2.setOrderitemtbContent(content);
		orderItem2.setServiceTime(reservationperiodToInteger(appointmentInfoBean.getServiceTime()));
		orderItem2.setServiceDate(appointmentInfoBean.getServiceDate());
		orderItems.add(orderItem2);
		OrderItem orderItem3=new OrderItem();
		orderItem3.setOrderitemtbName("价格");
		content=appointmentInfoBean.getSelectPrice();
		orderItem3.setOrderitemtbContent(content);
		orderItem3.setServiceTime(reservationperiodToInteger(appointmentInfoBean.getServiceTime()));
		orderItem3.setServiceDate(appointmentInfoBean.getServiceDate());
		orderItems.add(orderItem3);
		OrderItem orderItem4=new OrderItem();
		orderItem4.setOrderitemtbName("总价");
		content=appointmentInfoBean.getServiceSearchTotalPrice().toString();
		orderItem4.setOrderitemtbContent(content);
		orderItem4.setServiceTime(reservationperiodToInteger(appointmentInfoBean.getServiceTime()));
		orderItem4.setServiceDate(appointmentInfoBean.getServiceDate());
		orderItems.add(orderItem4);
		OrderItem orderItem5=new OrderItem();
		orderItem5.setOrderitemtbName("订单联系人");
		content=appointmentInfoBean.getUserName();
		orderItem5.setOrderitemtbContent(content);
		orderItem5.setServiceTime(reservationperiodToInteger(appointmentInfoBean.getServiceTime()));
		orderItem5.setServiceDate(appointmentInfoBean.getServiceDate());
		orderItems.add(orderItem5);
		OrderItem orderItem6=new OrderItem();
		orderItem6.setOrderitemtbName("服务地址");
		content=appointmentInfoBean.getUserAddress();
		orderItem6.setOrderitemtbContent(content);
		orderItem6.setServiceTime(reservationperiodToInteger(appointmentInfoBean.getServiceTime()));
		orderItem6.setServiceDate(appointmentInfoBean.getServiceDate());
		orderItems.add(orderItem6);
		OrderItem orderItem7=new OrderItem();
		orderItem7.setOrderitemtbName("服务时间");
		content=appointmentInfoBean.getServiceDate()+"-"+appointmentInfoBean.getServiceTime();
		orderItem7.setOrderitemtbContent(content);
		orderItem7.setServiceTime(reservationperiodToInteger(appointmentInfoBean.getServiceTime()));
		orderItem7.setServiceDate(appointmentInfoBean.getServiceDate());
		orderItems.add(orderItem7);
		OrderItem orderItem8=new OrderItem();
		orderItem8.setOrderitemtbName("联系方式");
		content=appointmentInfoBean.getUserTelephone();
		orderItem8.setOrderitemtbContent(content);
		orderItem8.setServiceTime(reservationperiodToInteger(appointmentInfoBean.getServiceTime()));
		orderItem8.setServiceDate(appointmentInfoBean.getServiceDate());
		orderItems.add(orderItem8);
		
		return orderItems;
	}
	private Integer reservationperiodToInteger(String reservationperiod) {
		if("早上".equals(reservationperiod)||"上午".equals(reservationperiod)){
			return 1;
		}else if("下午".equals(reservationperiod)){
			return 2;
		}else if("晚上".equals(reservationperiod)){
			return 3;
		}
		return 0;
	}

}
