package com.craftsman.ssm.bean;

import java.util.List;

import com.craftsman.ssm.entity.Article;



public class ArticlesBean {
	
	private List<Article> rows;
	private int total;
	public List<Article> getRows() {
		return rows;
	}
	public void setRows(List<Article> rows) {
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
