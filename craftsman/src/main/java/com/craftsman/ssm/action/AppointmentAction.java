package com.craftsman.ssm.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.AppointmentInfoBean;
import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.bean.OrderBean;
import com.craftsman.ssm.entity.User;
import com.craftsman.ssm.service.AppointmentService;
import com.craftsman.ssm.service.OrderService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller("appointmentAction")
@Scope("prototype")
public class AppointmentAction implements ModelDriven<AppointmentInfoBean>,SessionAware {
	private AppointmentInfoBean appointmentInfoBean;
	private JsonBean jsonBean;
	private User user;
	private Map<String,Object> session;
	@Autowired
	private AppointmentService appointmentService;
	private OrderBean orderBean;
	
	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}

	public String submitAppointment(){
		jsonBean=new JsonBean();
		jsonBean.setCode(1);
		jsonBean.setMessage("chengg");
		user=(User) ActionContext.getContext().getSession().get("loginuser");
		appointmentInfoBean.setUserId(user.getUsertbId());
		orderBean=appointmentService.createOrderBean(appointmentInfoBean);
		session=ActionContext.getContext().getSession();
		session.put("demandInfo", appointmentInfoBean);
		appointmentService.appointmentOrder(orderBean, session);
		return "tosubmitAppointment";
	}
	
	public AppointmentInfoBean getModel() {
		appointmentInfoBean=new AppointmentInfoBean();
		return appointmentInfoBean;
	}

	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
 
}
