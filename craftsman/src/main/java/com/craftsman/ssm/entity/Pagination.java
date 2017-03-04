package com.craftsman.ssm.entity;

import java.io.Serializable;

/*
 * 分页参数实体类
 */
public class Pagination implements Serializable {
	private static final long serialVersionUID = -5959802555638877445L;
	private int page=1;// 当前页数
	private Integer rows=9;// 分页大小
	private Integer totalPage;// 总页数
	private Integer total;// 总数
	private Integer min;// 查询开始的位置
	private Integer max;// 查询结束的位置
	private String orderFieldStr;// 排序字段
	private String order;// 排序方向
	private String queryStr;//查询条件
	private String selectstatu;//选择条件
	private String sort;//easyui后台排序字段

	public Pagination() {

	}

	public Pagination(Integer min, Integer max) {
		
		this.min = min;
		this.max = max;
	}

	public Integer getMin() {
		return min;
	}

	public void setMin(Integer min) {
		this.min = min;
	}

	public Integer getMax() {
		return max;
	}

	public void setMax(Integer max) {
		this.max = max;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public String getOrderFieldStr() {
		return orderFieldStr;
	}

	public void setOrderFieldStr(String orderFieldStr) {
		this.orderFieldStr = orderFieldStr;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}
	

	public String getQueryStr() {
		return queryStr;
	}

	public void setQueryStr(String queryStr) {
		this.queryStr = queryStr;
	}


	@Override
	public String toString() {
		return "Pagination [page=" + page + ", rows=" + rows + ", totalPage="
				+ totalPage + ", total=" + total + ", min=" + min + ", max="
				+ max + ", orderFieldStr=" + orderFieldStr + ", order=" + order
				+ ", queryStr=" + queryStr + ", selectstatu=" + selectstatu
				+ ", sort=" + sort + "]";
	}

	public void setParamMin() {
		min = (page - 1) * rows;
		if(min<=0){
			min=0;
		}

	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getSelectstatu() {
		return selectstatu;
	}

	public void setSelectstatu(String selectstatu) {
		this.selectstatu = selectstatu;
	}
	

}