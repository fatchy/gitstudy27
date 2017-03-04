package com.craftsman.ssm.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.DemandInfoBean;
import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.bean.OrderBean;
import com.craftsman.ssm.bean.ShowOrdersBean;
import com.craftsman.ssm.entity.User;
import com.craftsman.ssm.entity.Worker;
import com.craftsman.ssm.entity.WorkerType;
import com.craftsman.ssm.service.OrderService;
import com.craftsman.ssm.service.OrdersInfoService;
import com.craftsman.ssm.service.WorkerService;
import com.craftsman.ssm.service.impl.WorkerServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller("orderAction")
@Scope("prototype")
public class OrderAction implements ModelDriven<DemandInfoBean>, SessionAware {
	private Map<String, Object> session;
	private DemandInfoBean demandInfoBean;
	private JsonBean jsonBean;
	@Autowired
	private WorkerService workerService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrdersInfoService ordersInfoService;
	private WorkerType wokerType;
	private User user;
	private OrderBean orderBean;
	private ShowOrdersBean showOrdersBean;
	
	public ShowOrdersBean getShowOrdersBean() {
		return showOrdersBean;
	}

	public void setShowOrdersBean(ShowOrdersBean showOrdersBean) {
		this.showOrdersBean = showOrdersBean;
	}
	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}

	/**
	 * 提交保存用户的需求的信息
	 * 
	 * @return
	 */
	public String submitDemand() {
		jsonBean = new JsonBean();
		jsonBean.setCode(1);
		jsonBean.setMessage("chengg");
		user = (User) ActionContext.getContext().getSession().get("loginuser");
		demandInfoBean.setUserId(user.getUsertbId().toString());
		orderBean = orderService.createOrderBean(demandInfoBean);
		wokerType = new WorkerType();
		wokerType.setWorkertypetbId(Integer.parseInt(demandInfoBean.getWorkertypetbName()));
		List<Worker> listWokers = workerService.findWorkerByWorkerType(wokerType);
		session = ActionContext.getContext().getSession();
		session.put("demandInfo", demandInfoBean);
		orderService.quickorder(orderBean, session);
		return "tocraftsManOrder";
	}

	/**
	 * 确认订单
	 * 
	 * @return
	 */
	public String comformationOrder() {
		return null;
	}
	
	/**
	 * 获取用户的订单信息
	 */
	public String userOrder(){
		user=(User) ActionContext.getContext().getSession().get("loginuser");
		showOrdersBean=ordersInfoService.getShowOrdersBean(user);
		return "userOder";
	}

	public DemandInfoBean getModel() {
		demandInfoBean = new DemandInfoBean();
		return demandInfoBean;
	}

	public void setSession(Map<String, Object> session) {

		this.session = session;

	}
}
