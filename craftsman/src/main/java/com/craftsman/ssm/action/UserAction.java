package com.craftsman.ssm.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.bean.UserBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.User;
import com.craftsman.ssm.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller("userAction")
@Scope("prototype")

public class UserAction implements ModelDriven<Pagination> {
	private Pagination pagination;
	private UserBean userBean;
	private JsonBean jsonBean;
	private User user;
	private String userInfo;
	private String usertbPassword;
	public String getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(String userInfo) {
		this.userInfo = userInfo;
	}
	@Autowired
	private UserService userService;

	public String list() {
		userBean = userService.listUser(pagination);
		return "userBean";
	}

	public String login() {

		jsonBean = new JsonBean();
		user = userService.login(user);
		if (user == null) {
			jsonBean.setCode(0);
			jsonBean.setMessage("用户名或密码错误");
		} else {
			ActionContext.getContext().getSession().put("loginuser", user);
			jsonBean.setCode(1);
			jsonBean.setMessage("登陆成功");
		}
		return "jsonBean";
	}

	/*
	 * 检查用户名、邮箱是否存在
	 */
	public String checkname() {
		jsonBean = new JsonBean();
		if (userService.check(user)) {// 用户存在
			jsonBean.setCode(1);
			jsonBean.setMessage("已存在");
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("可以使用");
		}

		return "jsonBean";

	}

	public String checkemail() {
		jsonBean = new JsonBean();
		if (userService.check(user)) {// 邮箱存在
			jsonBean.setCode(1);
			jsonBean.setMessage("已存在");
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("可以使用");
		}

		return "jsonBean";

	}

	public String register() {
		jsonBean = new JsonBean();
		int result = userService.addUser(user);
		if (result > 0) {
			jsonBean.setCode(1);
			jsonBean.setMessage("注册成功");
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("注册失败");
		}
		user = null;
		return "jsonBean";
	}

	public String loginout() {

		ActionContext.getContext().getSession().remove("loginuser");

		return "loginout";
	}
	public String isLogin(){
		System.out.println(userInfo);
		String result="success1";
		if(userInfo.equals("null")){
			result="faile1";
			System.out.println(11);
		}
		System.out.println(result);
		return result;
	}
	public String changepwd() {
		jsonBean = new JsonBean();
		user=(User) ActionContext.getContext().getSession().get("loginuser");
		user.setUsertbPassword(usertbPassword);
		if(userService.changePwd(user)){
			jsonBean.setCode(1);
			jsonBean.setMessage("密码修改成功");
		}else{
			jsonBean.setCode(0);
			jsonBean.setMessage("密码修改失败，请重新提交");
		}
		return "changePwdJson";
	}

	public UserBean getUserBean() {
		return userBean;
	}

	public void setUserBean(UserBean userBean) {
		this.userBean = userBean;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Pagination getModel() {
		pagination = new Pagination();
		return pagination;
	}

	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}
	public String getUsertbPassword() {
		return usertbPassword;
	}

	public void setUsertbPassword(String usertbPassword) {
		this.usertbPassword = usertbPassword;
	}

}
