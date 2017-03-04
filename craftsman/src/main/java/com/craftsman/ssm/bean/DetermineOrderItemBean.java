package com.craftsman.ssm.bean;

import java.io.Serializable;
import java.util.List;

public class DetermineOrderItemBean implements Serializable{
	
	private static final long serialVersionUID = -6216895933942168418L;
	private String serviceName;//服务项名称
	private String serviceNum;//服务的数量
	private String servicePrice;//服务单价
	private String serviceTatolPrice;//服务总价
	private String serviceUserName;//服务用户的名称
	private String serviceAddress;//服务地址
	private String serviceDate;//服务日期
	private String serviceUserPhone;//服务用户的联系方式
	private Integer ordercontentid;//订单内容的id
	private Integer orderItemids;//订单项的id集合
	public DetermineOrderItemBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DetermineOrderItemBean(String serviceName, String serviceNum,
			String servicePrice, String serviceTatolPrice,
			String serviceUserName, String serviceAddress, String serviceDate,
			String serviceUserPhone, Integer ordercontentid,
			Integer orderItemids) {
		super();
		this.serviceName = serviceName;
		this.serviceNum = serviceNum;
		this.servicePrice = servicePrice;
		this.serviceTatolPrice = serviceTatolPrice;
		this.serviceUserName = serviceUserName;
		this.serviceAddress = serviceAddress;
		this.serviceDate = serviceDate;
		this.serviceUserPhone = serviceUserPhone;
		this.ordercontentid = ordercontentid;
		this.orderItemids = orderItemids;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getServiceNum() {
		return serviceNum;
	}
	public void setServiceNum(String serviceNum) {
		this.serviceNum = serviceNum;
	}
	public String getServicePrice() {
		return servicePrice;
	}
	public void setServicePrice(String servicePrice) {
		this.servicePrice = servicePrice;
	}
	public String getServiceTatolPrice() {
		return serviceTatolPrice;
	}
	public void setServiceTatolPrice(String serviceTatolPrice) {
		this.serviceTatolPrice = serviceTatolPrice;
	}
	public String getServiceUserName() {
		return serviceUserName;
	}
	public void setServiceUserName(String serviceUserName) {
		this.serviceUserName = serviceUserName;
	}
	public String getServiceAddress() {
		return serviceAddress;
	}
	public void setServiceAddress(String serviceAddress) {
		this.serviceAddress = serviceAddress;
	}
	public String getServiceDate() {
		return serviceDate;
	}
	public void setServiceDate(String serviceDate) {
		this.serviceDate = serviceDate;
	}
	public String getServiceUserPhone() {
		return serviceUserPhone;
	}
	public void setServiceUserPhone(String serviceUserPhone) {
		this.serviceUserPhone = serviceUserPhone;
	}
	public Integer getOrdercontentid() {
		return ordercontentid;
	}
	public void setOrdercontentid(Integer ordercontentid) {
		this.ordercontentid = ordercontentid;
	}
	public Integer getOrderItemids() {
		return orderItemids;
	}
	public void setOrderItemids(Integer orderItemids) {
		this.orderItemids = orderItemids;
	}
	@Override
	public String toString() {
		return "DetermineOrderItemBean [serviceName=" + serviceName
				+ ", serviceNum=" + serviceNum + ", servicePrice="
				+ servicePrice + ", serviceTatolPrice=" + serviceTatolPrice
				+ ", serviceUserName=" + serviceUserName + ", serviceAddress="
				+ serviceAddress + ", serviceDate=" + serviceDate
				+ ", serviceUserPhone=" + serviceUserPhone
				+ ", ordercontentid=" + ordercontentid + ", orderItemids="
				+ orderItemids + "]";
	}
	
	
	

}
