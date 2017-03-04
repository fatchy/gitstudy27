package com.craftsman.ssm.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.bean.OrderDetailBean;
import com.craftsman.ssm.bean.PaginationBean;
import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.service.OrderService;
import com.opensymphony.xwork2.ModelDriven;

@Controller("orderActionBack")
@Scope("prototype") // 改变spring默认的单例模式，使每一次请求都创建一个不同的Action
public class OrderActionBack implements ModelDriven<Pagination> {
	private Pagination pagination;
	private PaginationBean<Order> paginationBean;
	private OrderDetailBean orderDetailBean;
	// 返回受影响的函数，传入前台页面
	private JsonBean jsonBean;
	private int ordertbId;
	private int ordertbStatus;
	private int id;

	@Autowired
	private OrderService orderService;

	public String list() {
		System.out.println(pagination);
		setPaginationBean(orderService.listByPagination(pagination));

		return "paginationBean";
	}

	public String findbyid() {

		orderDetailBean = orderService.findDetailByOrderId(ordertbId);

		return "orderDetailBean";
	}

	public String update() {
		jsonBean = new JsonBean();
		Order order = new Order();
		order.setOrdertbId(ordertbId);
		order.setOrdertbStatus(ordertbStatus);
		int result = orderService.update(order);
		if (result > 0) {
			jsonBean.setCode(1);
			jsonBean.setMessage("更新成功");
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("更新失败");
		}
		return "jsonBean";
	}

	public String delete() {
		jsonBean = new JsonBean();
		int result = orderService.deleteByOrderid(id);

		if (result > 0) {
			jsonBean.setCode(1);
			jsonBean.setMessage("删除成功");
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("删除失败");
		}
		return "jsonBean";
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}

	public Pagination getModel() {
		pagination = new Pagination();
		return pagination;
	}

	public PaginationBean<Order> getPaginationBean() {
		return paginationBean;
	}

	public void setPaginationBean(PaginationBean<Order> paginationBean) {
		this.paginationBean = paginationBean;
	}

	public OrderDetailBean getOrderDetailBean() {
		return orderDetailBean;
	}

	public void setOrderDetailBean(OrderDetailBean orderDetailBean) {
		this.orderDetailBean = orderDetailBean;
	}

	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public int getOrdertbId() {
		return ordertbId;
	}

	public void setOrdertbId(int ordertbId) {
		this.ordertbId = ordertbId;
	}

	public int getOrdertbStatus() {
		return ordertbStatus;
	}

	public void setOrdertbStatus(int ordertbStatus) {
		this.ordertbStatus = ordertbStatus;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
