package com.craftsman.ssm.bean;

import java.io.Serializable;

/**
 * 客户需求信息
 * @author Administrator
 *
 */
public class DemandInfoBean implements Serializable{
	
	private static final long serialVersionUID = 4052688577194754816L;
	private String serviceSearchInput;//客户需求
	private String workpricetbName;//客户选择专修业务
	private String selectPrice;//客户选择的价格
	private String serviceSearchTotalPrice;//系统报价
	private String serviceNum;//客户选择的数量
	private String userName;//用户姓名
	private String userTelephone;//客户联系方式
	private String userAddress;//客户地址
	private String workertypetbName;//客户选择的工人
	private String serviceDate;//服务日期
	private String serviceTime;//服务时间段
	private String userId;//用户ID
	public DemandInfoBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getServiceSearchInput() {
		return serviceSearchInput;
	}
	public String getServiceNum() {
		return serviceNum;
	}

	public void setServiceNum(String serviceNum) {
		this.serviceNum = serviceNum;
	}

	public DemandInfoBean(String serviceSearchInput, String workpricetbName,
			String selectPrice, String serviceSearchTotalPrice,
			String serviceNum, String userName, String userTelephone,
			String userAddress, String workertypetbName, String serviceDate,
			String serviceTime, String userId) {
		super();
		this.serviceSearchInput = serviceSearchInput;
		this.workpricetbName = workpricetbName;
		this.selectPrice = selectPrice;
		this.serviceSearchTotalPrice = serviceSearchTotalPrice;
		this.serviceNum = serviceNum;
		this.userName = userName;
		this.userTelephone = userTelephone;
		this.userAddress = userAddress;
		this.workertypetbName = workertypetbName;
		this.serviceDate = serviceDate;
		this.serviceTime = serviceTime;
		this.userId = userId;
	}

	public void setServiceSearchInput(String serviceSearchInput) {
		this.serviceSearchInput = serviceSearchInput;
	}
	public String getWorkpricetbName() {
		return workpricetbName;
	}
	public void setWorkpricetbName(String workpricetbName) {
		this.workpricetbName = workpricetbName;
	}
	public String getSelectPrice() {
		return selectPrice;
	}
	public void setSelectPrice(String selectPrice) {
		this.selectPrice = selectPrice;
	}
	public String getServiceSearchTotalPrice() {
		return serviceSearchTotalPrice;
	}
	public void setServiceSearchTotalPrice(String serviceSearchTotalPrice) {
		this.serviceSearchTotalPrice = serviceSearchTotalPrice;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserTelephone() {
		return userTelephone;
	}
	public void setUserTelephone(String userTelephone) {
		this.userTelephone = userTelephone;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getWorkertypetbName() {
		return workertypetbName;
	}
	public void setWorkertypetbName(String workertypetbName) {
		this.workertypetbName = workertypetbName;
	}
	public String getServiceDate() {
		return serviceDate;
	}
	public void setServiceDate(String serviceDate) {
		this.serviceDate = serviceDate;
	}
	public String getServiceTime() {
		return serviceTime;
	}
	public void setServiceTime(String serviceTime) {
		this.serviceTime = serviceTime;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "DemandInfoBean [serviceSearchInput=" + serviceSearchInput
				+ ", workpricetbName=" + workpricetbName + ", selectPrice="
				+ selectPrice + ", serviceSearchTotalPrice="
				+ serviceSearchTotalPrice + ", serviceNum=" + serviceNum
				+ ", userName=" + userName + ", userTelephone=" + userTelephone
				+ ", userAddress=" + userAddress + ", workertypetbName="
				+ workertypetbName + ", serviceDate=" + serviceDate
				+ ", serviceTime=" + serviceTime + ", userId=" + userId + "]";
	}
	
	
	
	
	
	}