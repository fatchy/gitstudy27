package com.craftsman.ssm.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.DetermineOrderItemBean;
import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.service.DetermineOrderItemService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;

@Controller("determineOrderItemAction")
@Scope("prototype")
public class DetermineOrderItemAction implements ModelDriven<DetermineOrderItemBean>{
	private DetermineOrderItemBean determineOrderItemBean;
	private JsonBean jsonBean;
	public JsonBean getJsonBean() {
		return jsonBean;
	}
	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}
	@Autowired
	private DetermineOrderItemService determineOrderItemService;
	
	public String determineOrderItem(){
		jsonBean=new JsonBean();
		jsonBean.setCode(1);
		jsonBean.setMessage("chengg");
		determineOrderItemService.updateOrderItems(determineOrderItemBean);
		return "success";
	}
	public DetermineOrderItemBean getModel() {
		determineOrderItemBean=new DetermineOrderItemBean();
		return determineOrderItemBean;
	}
	
}
