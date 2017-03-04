package com.craftsman.ssm.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.entity.Admin;
import com.craftsman.ssm.service.AdminService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller("adminAction")
public class AdminAction implements ModelDriven<Admin> {
	private Admin admin;
	private JsonBean jsonBean;
	@Autowired
	private AdminService adminService;

	/*
	 * 登陆界面
	 */
	public String login() {
		jsonBean = new JsonBean();
		try {
			admin = adminService.getAdmin(admin);
		} catch (Exception e) {
			jsonBean.setCode(1);
			jsonBean.setMessage(e.getMessage());

		}
		if (admin != null) {
			ActionContext.getContext().getSession().put("admin", admin);
			jsonBean.setCode(1);
			jsonBean.setMessage("success");
			return "jsonBean";
		}
		ActionContext.getContext().getSession().remove("admin");
		jsonBean.setCode(0);
		jsonBean.setMessage("fail");
		return "jsonBean";

	}

	/*
	 * 跳转到主页
	 */
	public String tobackmain() {
		Admin admin = (Admin) ActionContext.getContext().getSession().get("admin");
		if (admin != null) {
			return "tobackmain";
		} else {
			return "nologin";
		}
	}

	/*
	 * 退出登录
	 */
	public String loginout() {
		ActionContext.getContext().getSession().remove("admin");
		return "loginout";
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}

	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public Admin getModel() {
		admin = new Admin();
		return admin;
	}
}
