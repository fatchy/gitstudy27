package com.craftsman.ssm.bean;

import java.util.List;

public class PaginationBean<T> {
	private static final long serialVersionUID = -2821842717599535368L;
	private List<T> rows;
	private int total;
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
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
		return "PaginationBean [rows=" + rows + ", total=" + total + "]";
	}
	
	
	
}
