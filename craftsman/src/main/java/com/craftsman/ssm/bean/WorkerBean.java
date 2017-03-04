package com.craftsman.ssm.bean;

import java.util.List;

import com.craftsman.ssm.entity.User;
import com.craftsman.ssm.entity.Worker;

public class WorkerBean {
	private List<Worker> rows;
	private int total;

	public List<Worker> getRows() {
		return rows;
	}

	public void setRows(List<Worker> rows) {
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
		return "UserBean [rows=" + rows + ", total=" + total + "]";
	}

}
