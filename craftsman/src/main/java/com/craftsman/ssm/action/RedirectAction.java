package com.craftsman.ssm.action;

import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.entity.User;
import com.opensymphony.xwork2.ActionContext;

/*
 * 网页的跳转、转发action
 */
@Controller("redirectAction")
public class RedirectAction {
	private JsonBean jsonBean;

	public String index() {
		User user = (User) ActionContext.getContext().get("loginuser");
		if (user != null) {
			jsonBean = new JsonBean();
			return "jsonBean";
		}

		return "index";
	}
	
	public String login() {
		return "login";
	}
	public String craftsManOrder(){
		return "tocraftsManOrder";
	}
	public String bespeakOrder(){
		return "tobespeakOrder";
	}
	
	public String toPayMoney(){
		return "toPayMoney";
	}
	public String laborComment(){
		return "tolaborComment";
	}
	public String laborlist(){
		return "laborlist";
	}

	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}

}
