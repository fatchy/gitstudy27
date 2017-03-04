package com.craftsman.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.craftsman.ssm.bean.CommentBean;
import com.craftsman.ssm.bean.WorkerCommentBean;
import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Worker;
import com.craftsman.ssm.entity.WorkerComment;
import com.craftsman.ssm.mapper.OrderMapper;
import com.craftsman.ssm.mapper.WorkerCommentMapper;
import com.craftsman.ssm.service.WorkerCommentService;

@Service("workerCommentService")
public class WorkerCommentServiceImpl implements WorkerCommentService {
	@Autowired
	private WorkerCommentMapper workerCommentMapper;
	@Autowired
	private OrderMapper orderMapper;
	
	public List<CommentBean> findPartComment(Pagination pagination) {
		List<CommentBean> commentBeans = workerCommentMapper.findPartComment(pagination);
		return commentBeans;
	}

	public int findCommentCount(Pagination pagination) {
		int count = workerCommentMapper.findCommentCount(pagination);
		return count;
	}
	@Transactional
	public int addComment(WorkerComment workerComment) {
		int re = workerCommentMapper.addComment(workerComment);
		Order order = new Order();
		order.setOrdertbEvalstate(2);
		order.setOrdertbId(workerComment.getOrdertbId());
		int re2= orderMapper.updateOrderevaluationState(order);
		return re2;
	}

	public int findByOrderId(WorkerComment workerComment) {
		int re= workerCommentMapper.findByOrderId(workerComment);
		return re;
	}

}
