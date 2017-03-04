package com.craftsman.ssm.bean;

import java.io.Serializable;
import java.util.List;

import com.craftsman.ssm.entity.User;

public class UserBean implements Serializable {

	private static final long serialVersionUID = -2821842717599535368L;
	private List<User> rows;
	private int total;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getRows() {
		return rows;
	}

	public void setRows(List<User> rows) {
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
		return "UserBean [rows=" + rows + ", total=" + total + ", user=" + user + "]";
	}

}
