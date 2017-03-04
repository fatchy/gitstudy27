package com.craftsman.ssm.bean;

import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.WorkerComment;

public class CommentOrderBean {
	private WorkerComment workerComment;
	private Order order;
	public WorkerComment getWorkerComment() {
		return workerComment;
	}
	public void setWorkerComment(WorkerComment workerComment) {
		this.workerComment = workerComment;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	@Override
	public String toString() {
		return "CommentOrderBean [workerComment=" + workerComment + ", order="
				+ order + "]";
	}
}
