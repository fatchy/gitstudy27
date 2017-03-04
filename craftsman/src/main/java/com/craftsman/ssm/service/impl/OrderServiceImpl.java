package com.craftsman.ssm.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.craftsman.ssm.bean.DemandInfoBean;
import com.craftsman.ssm.bean.OrderBean;
import com.craftsman.ssm.bean.OrderDetailBean;
import com.craftsman.ssm.bean.PaginationBean;
import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.OrderContent;
import com.craftsman.ssm.entity.OrderItem;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Reservation;
import com.craftsman.ssm.entity.Worker;
import com.craftsman.ssm.entity.WorkerType;
import com.craftsman.ssm.mapper.OrderContentMapper;
import com.craftsman.ssm.mapper.OrderItemMapper;
import com.craftsman.ssm.mapper.OrderMapper;
import com.craftsman.ssm.mapper.WorkerMapper;
import com.craftsman.ssm.service.OrderService;
import com.craftsman.ssm.service.ReservationService;
import com.craftsman.ssm.service.WorkerService;
import com.mysql.fabric.xmlrpc.base.Data;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private WorkerMapper workerMapper;
	private PaginationBean<Order> paginationBean;
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private OrderContentMapper orderContentMapper;
	@Autowired
	private OrderItemMapper orderItemMapper;
	@Autowired
	private WorkerService workerService;
	@Autowired
	private ReservationService reservationService;

	@Transactional
	public int quickorder(OrderBean orderBean, Map<String, Object> session) {
		Order order = orderBean.getOrder();
		orderMapper.insert(order);
		OrderContent orderContent = orderBean.getOrderContent();
		orderContent.setOrdertbId(order.getOrdertbId());
		session.put("orderid", order.getOrdertbId());
		orderContentMapper.insert(orderContent);
		session.put("ordercontenttbId", orderContent.getOrdercontenttbId());
		Reservation reservation = new Reservation();
		List<Integer> orderItemIds = new ArrayList<Integer>();

		for (OrderItem oi : orderContent.getOrderitem()) {
			oi.setOrdercontenttbId(orderContent.getOrdercontenttbId());
			Integer reservationtbPeriod = oi.getServiceTime();
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

	public Worker selectWorkerByDemandInfo(DemandInfoBean ddb) {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer reservationperiodToInteger(String reservationperiod) {
		if ("早上".equals(reservationperiod)) {
			return 1;
		} else if ("下午".equals(reservationperiod)) {
			return 2;
		} else if ("晚上".equals(reservationperiod)) {
			return 3;
		}
		return 0;
	}

	public Integer getWorkerId(DemandInfoBean demandInfo) {
		WorkerType workerType = new WorkerType();
		workerType.setWorkertypetbId(Integer.parseInt(demandInfo.getWorkertypetbName()));
		List<Worker> workers = workerService.findWorkerByWorkerType(workerType);

		for (Worker worker : workers) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String strDate = paresServiceTime(demandInfo.getServiceDate());
			Date date;

			try {
				date = sdf.parse(strDate);
				Reservation reservation = reservationService.getReservation(worker.getWorkertbId(), date,
						reservationperiodToInteger(demandInfo.getServiceTime()));
				if (reservation == null) {
					return worker.getWorkertbId();
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return null;
	}

	public Order createOrder(DemandInfoBean demandInfo) {
		Order order = new Order();
		order.setOrdertbStarttime(new Date());
		order.setOrdertbMoney(Double.parseDouble(demandInfo.getServiceSearchTotalPrice()));
		order.setOrdertbStatus(1);
		order.setOrdertbEvalstate(1);
		order.setOrdertbPaystatus(0);
		order.setUsertbId(Integer.parseInt(demandInfo.getUserId()));
		Integer workertbId = getWorkerId(demandInfo);
		order.setWorkertbId(workertbId);
		return order;
	}

	public OrderItem createOrderItem(DemandInfoBean demandInfo) {
		OrderItem orderItem = new OrderItem();
		orderItem.setOrderitemtbName(demandInfo.getServiceSearchInput());
		String content = demandInfo.getWorkpricetbName() + "," + demandInfo.getServiceNum() + ","
				+ demandInfo.getSelectPrice() + "," + demandInfo.getServiceSearchTotalPrice() + ","
				+ demandInfo.getUserName() + "," + demandInfo.getUserAddress() + ","
				+ demandInfo.getServiceDate().split(",")[0] + "-" + demandInfo.getServiceTime() + ","
				+ demandInfo.getUserTelephone();
		orderItem.setOrderitemtbContent(content);
		orderItem.setServiceTime(reservationperiodToInteger(demandInfo.getServiceTime()));
		orderItem.setServiceDate(paresServiceTime(demandInfo.getServiceDate()));
		return orderItem;
	}

	public List<OrderItem> createListOfOrderItem(DemandInfoBean demandInfo) {
		List<OrderItem> orderItems = new ArrayList<OrderItem>();
		String content;
		OrderItem orderItem1 = new OrderItem();
		orderItem1.setOrderitemtbName("服务项目");
		content = demandInfo.getWorkpricetbName();
		orderItem1.setOrderitemtbContent(content);
		orderItem1.setServiceTime(reservationperiodToInteger(demandInfo.getServiceTime()));
		orderItem1.setServiceDate(paresServiceTime(demandInfo.getServiceDate()));
		orderItems.add(orderItem1);
		OrderItem orderItem2 = new OrderItem();
		orderItem2.setOrderitemtbName("数量");
		content = demandInfo.getServiceNum();
		orderItem2.setOrderitemtbContent(content);
		orderItem2.setServiceTime(reservationperiodToInteger(demandInfo.getServiceTime()));
		orderItem2.setServiceDate(paresServiceTime(demandInfo.getServiceDate()));
		orderItems.add(orderItem2);
		OrderItem orderItem3 = new OrderItem();
		orderItem3.setOrderitemtbName("价格");
		content = demandInfo.getSelectPrice();
		orderItem3.setOrderitemtbContent(content);
		orderItem3.setServiceTime(reservationperiodToInteger(demandInfo.getServiceTime()));
		orderItem3.setServiceDate(paresServiceTime(demandInfo.getServiceDate()));
		orderItems.add(orderItem3);
		OrderItem orderItem4 = new OrderItem();
		orderItem4.setOrderitemtbName("总价");
		content = demandInfo.getServiceSearchTotalPrice();
		orderItem4.setOrderitemtbContent(content);
		orderItem4.setServiceTime(reservationperiodToInteger(demandInfo.getServiceTime()));
		orderItem4.setServiceDate(paresServiceTime(demandInfo.getServiceDate()));
		orderItems.add(orderItem4);
		OrderItem orderItem5 = new OrderItem();
		orderItem5.setOrderitemtbName("订单联系人");
		content = demandInfo.getUserName();
		orderItem5.setOrderitemtbContent(content);
		orderItem5.setServiceTime(reservationperiodToInteger(demandInfo.getServiceTime()));
		orderItem5.setServiceDate(paresServiceTime(demandInfo.getServiceDate()));
		orderItems.add(orderItem5);
		OrderItem orderItem6 = new OrderItem();
		orderItem6.setOrderitemtbName("服务地址");
		content = demandInfo.getUserAddress();
		orderItem6.setOrderitemtbContent(content);
		orderItem6.setServiceTime(reservationperiodToInteger(demandInfo.getServiceTime()));
		orderItem6.setServiceDate(paresServiceTime(demandInfo.getServiceDate()));
		orderItems.add(orderItem6);
		OrderItem orderItem7 = new OrderItem();
		orderItem7.setOrderitemtbName("服务时间");
		content = demandInfo.getServiceDate().split(",")[0] + "-" + demandInfo.getServiceTime();
		orderItem7.setOrderitemtbContent(content);
		orderItem7.setServiceTime(reservationperiodToInteger(demandInfo.getServiceTime()));
		orderItem7.setServiceDate(paresServiceTime(demandInfo.getServiceDate()));
		orderItems.add(orderItem7);
		OrderItem orderItem8 = new OrderItem();
		orderItem8.setOrderitemtbName("联系方式");
		content = demandInfo.getUserTelephone();
		orderItem8.setOrderitemtbContent(content);
		orderItem8.setServiceTime(reservationperiodToInteger(demandInfo.getServiceTime()));
		orderItem8.setServiceDate(paresServiceTime(demandInfo.getServiceDate()));
		orderItems.add(orderItem8);

		return orderItems;
	}

	public OrderBean createOrderBean(DemandInfoBean demandInfo) {
		Order order = createOrder(demandInfo);
		List<OrderItem> orderItems = createListOfOrderItem(demandInfo);
		OrderContent orderContent = new OrderContent();
		orderContent.setOrderitem(orderItems);
		OrderBean orderBean = new OrderBean();
		orderBean.setOrder(order);
		orderBean.setOrderContent(orderContent);
		return orderBean;
	}

	private String paresServiceTime(String serviceTiem) {
		String st = serviceTiem.split(",")[0];
		String[] st1 = st.split("-");
		if (st1[1].equals("一月")) {
			st1[1] = "01";
			return st1[0] + "-" + st1[1] + "-" + st1[2];
		} else if (st1[2].equals("二月")) {
			st1[1] = "02";
			return st1[0] + "-" + st1[1] + "-" + st1[2];
		} else if (st1[1].equals("三月")) {
			st1[1] = "03";
			return st1[0] + "-" + st1[1] + "-" + st1[2];
		} else if (st1[1].equals("四月")) {
			st1[1] = "04";
			return st1[0] + "-" + st1[1] + "-" + st1[2];
		} else if (st1[1].equals("五月")) {
			st1[1] = "05";
			return st1[0] + "-" + st1[1] + "-" + st1[2];
		} else if (st1[1].equals("六月")) {
			st1[1] = "06";
			return st1[0] + "-" + st1[1] + "-" + st1[2];
		} else if (st1[1].equals("七月")) {
			st1[1] = "07";
			return st1[0] + "-" + st1[1] + "-" + st1[2];
		} else if (st1[1].equals("八月")) {
			st1[1] = "08";
			return st1[0] + "-" + st1[1] + "-" + st1[2];
		} else if (st1[1].equals("九月")) {
			st1[1] = "09";
			return st1[0] + "-" + st1[1] + "-" + st1[2];
		} else if (st1[1].equals("十月")) {
			st1[1] = "10";
			return st1[0] + "-" + st1[1] + "-" + st1[2];
		} else if (st1[1].equals("十一月")) {
			st1[1] = "11";
			return st1[0] + "-" + st1[1] + "-" + st1[2];
		} else if (st1[1].equals("十二月")) {
			st1[1] = "12";
			return st1[0] + "-" + st1[1] + "-" + st1[2];
		}
		return null;

	}

	/*
	 * 分页查询
	 */
	public PaginationBean<Order> listByPagination(Pagination pagination) {

		paginationBean = new PaginationBean<Order>();
		List<Order> list = orderMapper.selectByPagination(pagination);
		paginationBean.setRows(list);
		paginationBean.setTotal(orderMapper.getCount());
		return paginationBean;
	}

	/*
	 * 查询详情
	 *
	 */
	public OrderDetailBean findDetailByOrderId(Integer orderid) {
		OrderDetailBean orderDetailBean = new OrderDetailBean();
		orderDetailBean.setOrder(orderMapper.selectByPrimaryKey(orderid));
		OrderContent orderContent = orderContentMapper.selectByOrderId(orderid);
		List<OrderItem> list = orderItemMapper.selectByCountId(orderContent.getOrdercontenttbId());
		orderDetailBean.setItem(list);
		orderDetailBean.setWorker(workerMapper.selectByWorkertbId(orderDetailBean.getOrder().getWorkertbId()));
		return orderDetailBean;
	}

	public int update(Order order) {

		return orderMapper.updateByPrimaryKeySelective(order);

	}

	public int deleteByOrderid(int orderid) {

		return orderMapper.deleteByPrimaryKey(orderid);
	}

}
