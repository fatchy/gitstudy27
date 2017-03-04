package com.craftsman.ssm.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.entity.User;
import com.craftsman.ssm.entity.UserAddress;
import com.craftsman.ssm.service.UserAddressService;
import com.craftsman.ssm.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
@Controller("userInfoChangeAction")
@Scope("prototype")
public class UserInfoChangeAction implements ModelDriven<User>{
	private JsonBean jsonBean;
	private User user;
	@Autowired
	private UserService userService;
	@Autowired
	private UserAddressService userAddressService;
	private String allAddress;
	public User getModel() {
		user=new User();
		return user;
	}
	public JsonBean getJsonBean() {
		return jsonBean;
	}
	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}
	
	public String changeInfo() {
		jsonBean = new JsonBean();
		User loginuser=(User) ActionContext.getContext().getSession().get("loginuser");
		user.setUsertbId(loginuser.getUsertbId());
		User updateUser=userService.changeInfo(user);
		if( updateUser !=null && userAddressService.changeAddress(stringToAddress(allAddress))){
			ActionContext.getContext().getSession().put("loginuser", updateUser);
			jsonBean.setCode(1);
			jsonBean.setMessage("信息修改成功");
		}else{
			jsonBean.setCode(0);
			jsonBean.setMessage("信息修改失败，请重新提交");
		}
		return "changeInfoJson";
	}
	
	public String addressList(){
		jsonBean = new JsonBean();
		User loginuser=(User) ActionContext.getContext().getSession().get("loginuser");
		List<UserAddress> list=userAddressService.getAddressByUserTbId(loginuser.getUsertbId());
		if(list!=null && list.size()>0){
			jsonBean.setCode(1);
			jsonBean.setObj(list);
		}else{
			jsonBean.setCode(0);
		}
		return "userAddressJson";
	}
	
	
	public String getAllAddress() {
		return allAddress;
	}
	public void setAllAddress(String allAddress) {
		this.allAddress = allAddress;
	}
	
	private List<UserAddress> stringToAddress(String strAddress){
		List<UserAddress> addressList=new ArrayList<UserAddress>();
		String[] str1=strAddress.split("C");
		User luser=(User) ActionContext.getContext().getSession().get("loginuser");
		for(int i=0;i<str1.length;i++){
			UserAddress uadd=new UserAddress();
			uadd.setUsertbId(luser.getUsertbId() );
			uadd.setUseraddresstbAddress(str1[i]);
			uadd.setAlternative1("常用地址");
			if(str1[i].substring(0, 1).equals("H")){
				uadd.setAlternative1("家庭地址");
			}
			addressList.add(uadd);
		}
		return addressList;
	}
}
