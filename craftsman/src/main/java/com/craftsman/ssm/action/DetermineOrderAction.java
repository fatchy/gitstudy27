package com.craftsman.ssm.action;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.mapper.OrderMapper;
import com.opensymphony.xwork2.ModelDriven;

@Controller("determineOrderAction")
@Scope("prototype")
public class DetermineOrderAction implements ModelDriven<Order>{
	private Order order;
	@Autowired
	private OrderMapper orderMapper;
	private JsonBean jsonBean;
	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}

	public Order getModel() {
		order=new Order();
		return order;
	}
	
	public String determineOrder(){
		jsonBean=new JsonBean();
		jsonBean.setCode(1);
		jsonBean.setMessage("chengg");
		order.setOrdertbStatus(3);
		order.setOrdertbEndtime(new Date());
		orderMapper.updateByPrimaryKeySelective(order);
		return "toPayMoney";
	}

}
