package com.craftsman.ssm.bean;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.craftsman.ssm.entity.Worker;
import com.craftsman.ssm.entity.WorkerComment;
@Component
@Scope("prototype")
public class WorkerCommentBean {
	
	private List<CommentBean> rows;
	private int total;
	public List<CommentBean> getRows() {
		return rows;
	}
	public void setRows(List<CommentBean> rows) {
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
		return "WorkerCommentBean [rows=" + rows + ", total=" + total + "]";
	}
}
