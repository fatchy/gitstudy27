package com.craftsman.ssm.mapper;

import java.util.List;

import com.craftsman.ssm.bean.CommentBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.WorkerComment;


public interface WorkerCommentMapper {
	List<CommentBean> findPartComment(Pagination pagination);
	int findCommentCount(Pagination pagination);
	int addComment(WorkerComment workerComment);
	int findByOrderId(WorkerComment workerComment);
}
