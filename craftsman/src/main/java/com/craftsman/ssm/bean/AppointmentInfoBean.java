package com.craftsman.ssm.bean;

import java.io.Serializable;

public class AppointmentInfoBean implements Serializable{
	
	private static final long serialVersionUID = -4039862304977722637L;
	private String serviceSearchInput;//预约服务项
	private String workpricetbName;//用户选择服务项的名称
	private String selectPrice;//服务单价
	private Integer serviceNum;//服务数量
	private Double serviceSearchTotalPrice;//服务总的费用
	private String userName;//用户的名称
	private String userTelephone;//用户的联系方式
	private String userAddress;//用户的地址
	private String serviceDate;//预约日期
	private String serviceTime;//预约时间段
	private Integer workerId;//服务工人的Id;
	private Integer userId;//客户的Id;
	public AppointmentInfoBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AppointmentInfoBean(String serviceSearchInput,
			String workpricetbName, String selectPrice, Integer serviceNum,
			Double serviceSearchTotalPrice, String userName,
			String userTelephone, String userAddress, String serviceDate,
			String serviceTime, Integer workerId, Integer userId) {
		super();
		this.serviceSearchInput = serviceSearchInput;
		this.workpricetbName = workpricetbName;
		this.selectPrice = selectPrice;
		this.serviceNum = serviceNum;
		this.serviceSearchTotalPrice = serviceSearchTotalPrice;
		this.userName = userName;
		this.userTelephone = userTelephone;
		this.userAddress = userAddress;
		this.serviceDate = serviceDate;
		this.serviceTime = serviceTime;
		this.workerId = workerId;
		this.userId = userId;
	}
	public String getServiceSearchInput() {
		return serviceSearchInput;
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
	public Integer getServiceNum() {
		return serviceNum;
	}
	public void setServiceNum(Integer serviceNum) {
		this.serviceNum = serviceNum;
	}
	public Double getServiceSearchTotalPrice() {
		return serviceSearchTotalPrice;
	}
	public void setServiceSearchTotalPrice(Double serviceSearchTotalPrice) {
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
	public Integer getWorkerId() {
		return workerId;
	}
	public void setWorkerId(Integer workerId) {
		this.workerId = workerId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "AppointmentInfoBean [serviceSearchInput=" + serviceSearchInput
				+ ", workpricetbName=" + workpricetbName + ", selectPrice="
				+ selectPrice + ", serviceNum=" + serviceNum
				+ ", serviceSearchTotalPrice=" + serviceSearchTotalPrice
				+ ", userName=" + userName + ", userTelephone=" + userTelephone
				+ ", userAddress=" + userAddress + ", serviceDate="
				+ serviceDate + ", serviceTime=" + serviceTime + ", workerId="
				+ workerId + ", userId=" + userId + "]";
	}
	
	
	

}
