package com.craftsman.ssm.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.bean.PaginationBean;
import com.craftsman.ssm.bean.WorkerTypeBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.WorkerType;
import com.craftsman.ssm.service.WorkerTypeService;
import com.opensymphony.xwork2.ModelDriven;

@Controller("workerTypeAction")
@Scope("prototype")
public class WorkerTypeAction implements ModelDriven<Pagination> {
	private Pagination pagination;
	private int id;
	private WorkerTypeBean workerTypeBean;
	private WorkerType workerType;
	private JsonBean jsonBean;
	private PaginationBean<WorkerType> paginationBean;
	private List<WorkerType> workerTypes;
	public List<WorkerType> getWorkerTypes() {
		return workerTypes;
	}
	public void setWorkerTypes(List<WorkerType> workerTypes) {
		this.workerTypes = workerTypes;
	}

	@Autowired
	private WorkerTypeService workerTypeService;

	public String list() {
		workerTypeBean = workerTypeService.findWorkerType();
		return "workerTypeBean";

	}

	public String getAll() {
		setPaginationBean(workerTypeService.getAll());
		return "paginationBean";
	}

	/**
	 * 分页查询
	 */

	public String listPagination() {
		workerTypeBean = workerTypeService.listBypagination(pagination);
		return "workerTypeBean";

	}

	public String insert() {
		jsonBean = new JsonBean();
		int result=-1;
		try {
			result = workerTypeService.insertOne(workerType);
		} catch (Exception e) {
			jsonBean.setCode(0);
			jsonBean.setMessage(e.getMessage());
		}
		if (result > 0) {
			jsonBean.setCode(1);
			jsonBean.setMessage("插入成功");
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("插入失败");
		}
		return "jsonBean";
	}

	public String update() {
		jsonBean = new JsonBean();
		int result = -1;
		try {
			result = workerTypeService.updateOne(workerType);
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

	public String delete() {
		jsonBean = new JsonBean();
		int result = -1;
		try {
			result = workerTypeService.deleteOne(id);
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
	public String type()
	{
		workerTypes = workerTypeService.findWorkerTypes();
		return "typejson";
	}

	public Pagination getPagination() {
		return pagination;
	}

	public void setPagination(Pagination pagination) {
		this.pagination = pagination;
	}

	public Pagination getModel() {
		pagination = new Pagination();
		return pagination;
	}

	public WorkerTypeBean getWorkerTypeBean() {
		return workerTypeBean;
	}

	public void setWorkerTypeBean(WorkerTypeBean workerTypeBean) {
		this.workerTypeBean = workerTypeBean;
	}

	public WorkerType getWorkerType() {
		return workerType;
	}

	public void setWorkerType(WorkerType workerType) {
		this.workerType = workerType;
	}

	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}

	public PaginationBean<WorkerType> getPaginationBean() {
		return paginationBean;
	}

	public void setPaginationBean(PaginationBean<WorkerType> paginationBean) {
		this.paginationBean = paginationBean;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
