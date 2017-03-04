package com.craftsman.ssm.bean;

import java.util.List;

import com.craftsman.ssm.entity.Article;
import com.craftsman.ssm.entity.WorkerType;



public class WorkerTypeBean {
	
	private List<WorkerType> rows;
	private int total;
	public List<WorkerType> getRows() {
		return rows;
	}
	public void setRows(List<WorkerType> rows) {
		this.rows = rows;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "ArticlesBean [rows=" + rows + ", total=" + total + "]";
	}
	
	
}
