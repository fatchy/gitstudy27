package com.craftsman.ssm.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.bean.WorkerBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Worker;
import com.craftsman.ssm.service.WorkerService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;

@Controller("workerAction")
@Scope("prototype")
public class WorkerAction implements ModelDriven<Pagination>, SessionAware {
	private Pagination pagination;
	private WorkerBean workerBean;
	private Integer workerId;
	private Worker worker;
	private Map<String, Object> session;
	private JsonBean jsonBean;
	private String date;
	private Integer id;

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Integer getWorkerId() {
		return workerId;
	}

	public void setWorkerId(Integer workerId) {
		this.workerId = workerId;
	}

	@Autowired
	private WorkerService workerService;

	public String list() {

		workerBean = workerService.listWorker(pagination);
		return "success";
	}

	public String search() {
		setWorkerBean(workerService.listWorker(pagination));
		return "searchResult";
	}

	public String getWorkerInfo() {
		jsonBean = new JsonBean();
		jsonBean.setCode(1);
		jsonBean.setMessage("chengg");
		worker = workerService.getWorkerInfoById(workerId);

		session.put("workerInfo", worker);
		session.put("date", date);
		return "getWorkerInfo";
	}

	public String insert() {
		jsonBean = new JsonBean();
		int result = workerService.insertOne(worker);

		if (result > 0) {
			jsonBean.setCode(1);
			jsonBean.setMessage("添加成功");
		} else {
			jsonBean.setCode(1);
			jsonBean.setMessage("添加失败");
		}

		return "jsonBean";
	}

	public String delete() {
		jsonBean = new JsonBean();
		int result = -1;
		try {
			result = workerService.deleteOne(id);
		} catch (Exception e) {
			jsonBean.setCode(0);
			jsonBean.setMessage(e.getMessage());
		}

		if (result > 0) {
			jsonBean.setCode(1);
			jsonBean.setMessage("删除成功");
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("删除失败");
		}
		return "jsonBean";
	}

	public String update() {
		jsonBean = new JsonBean();
		int result = -1;
		try {
			result = workerService.updateOne(worker);
		} catch (Exception e) {
			jsonBean.setCode(0);
			jsonBean.setMessage(e.getMessage());
		}

		if (result > 0) {
			jsonBean.setCode(1);
			jsonBean.setMessage("更新成功");
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("更新失败");
		}
		return "jsonBean";
	}

	public String submitSearchInfo() {
		jsonBean = new JsonBean();
		jsonBean.setCode(1);
		jsonBean.setMessage("chengg");
		session.put("selectstatu", pagination.getSelectstatu());
		session.put("queryStr", pagination.getQueryStr());
		return "submitSearchInfo";
	}

	public String clearSession() {

		session.put("queryStr", null);
		return Action.NONE;
	}

	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}

	public Pagination getModel() {
		pagination = new Pagination();
		return pagination;
	}

	public WorkerBean getWorkerBean() {
		return workerBean;
	}

	public void setWorkerBean(WorkerBean workerBean) {
		this.workerBean = workerBean;
	}

	public Worker getWorker() {
		return worker;
	}

	public void setWorker(Worker worker) {
		this.worker = worker;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;

	}
}
