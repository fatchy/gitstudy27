package com.craftsman.ssm.action;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.CommentBean;
import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.bean.WorkerCommentBean;
import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Worker;
import com.craftsman.ssm.entity.WorkerComment;
import com.craftsman.ssm.service.WorkerCommentService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@Controller("workerCommentAction")
@Scope("prototype")
public class WorkerCommentAction implements ModelDriven<Pagination> {
	@Autowired
	private WorkerCommentService workerCommentService;
	@Autowired
	private WorkerCommentBean workerCommentBean;
	
	private WorkerComment workerComment;
	
	private JsonBean jsonBean;
	
	private Pagination pagination;
	
	public Pagination getModel() {
		pagination = new Pagination();
		return pagination;
	}

	public WorkerCommentBean getWorkerCommentBean() {
		return workerCommentBean;
	}
	public void setWorkerCommentBean(WorkerCommentBean workerCommentBean) {
		this.workerCommentBean = workerCommentBean;
	}

	
	public WorkerComment getWorkerComment() {
		return workerComment;
	}

	public void setWorkerComment(WorkerComment workerComment) {
		this.workerComment = workerComment;
	}

	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}

	/**
	 *	获取评论 
	 * @return
	 */
	public String findcomment()
	{
		pagination.setParamMin();
		List<CommentBean> commentBeans = workerCommentService.findPartComment(pagination);
		workerCommentBean.setRows(commentBeans);
		int count = workerCommentService.findCommentCount(pagination);
		workerCommentBean.setTotal(count);
		return "commentjson";
	}
	/**
	 *添加评论
	 * @return
	 */
	public String addcomment()
	{
		int re = workerCommentService.addComment(workerComment);
		jsonBean=new JsonBean();
		if(re>0)
		{
			jsonBean.setCode(1);
		}else
		{
			jsonBean.setCode(0);
		}
		return "addcommentjson";
	}
	/**
	 * 判断某一订单是否已经评论
	 */
	public String check()
	{
		int re = workerCommentService.findByOrderId(workerComment);
		jsonBean=new JsonBean();
		if(re>0)
		{
			jsonBean.setCode(1);
			jsonBean.setMessage("你已评论不要在重复评论");
		}else
		{
			jsonBean.setCode(0);
		}
		return "checkjson";
	}
	
}
