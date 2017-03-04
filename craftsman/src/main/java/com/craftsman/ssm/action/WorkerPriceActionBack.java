package com.craftsman.ssm.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.bean.PaginationBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Workprice;
import com.craftsman.ssm.service.WorkerPriceService;
import com.opensymphony.xwork2.ModelDriven;

@Controller("workerPriceActionBack")
@Scope("prototype")
public class WorkerPriceActionBack implements ModelDriven<Pagination> {
	@Autowired
	private WorkerPriceService workerPriceService;

	private Pagination pagination;
	private PaginationBean<Workprice> paginationBean;
	private int workpricetbId;
	private int id;
	private JsonBean jsonBean;
	private Workprice workprice;

	public String list() {
		setPaginationBean(workerPriceService.selectByPagination(pagination));
		return "paginationBean";
	}

	public String delete() {
		jsonBean = new JsonBean();
		int result = -1;
		try {
			result = workerPriceService.deleteById(id);
		} catch (Exception e) {
			jsonBean.setCode(0);
			jsonBean.setMessage(e.getMessage());
			return "jsonBean";
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

	public String insert() {
		jsonBean = new JsonBean();
		int result = -1;

		try {
			result = workerPriceService.insertOne(workprice);
		} catch (Exception e) {
			jsonBean.setCode(0);
			jsonBean.setMessage(e.getMessage());
			return "jsonBean";
		}
		if (result > 0) {
			jsonBean.setCode(1);
			jsonBean.setMessage("添加成功");
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("添加失败");
		}

		return "jsonBean";
	}

	public String update() {
		System.out.println(workpricetbId);
		jsonBean = new JsonBean();
		int result = -1;
		try {
			result = workerPriceService.updateOne(workprice);
		} catch (Exception e) {
			jsonBean.setCode(0);
			jsonBean.setMessage(e.getMessage());
			return "jsonBean";
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

	public Pagination getModel() {
		pagination = new Pagination();
		return pagination;
	}

	public PaginationBean<Workprice> getPaginationBean() {
		return paginationBean;
	}

	public void setPaginationBean(PaginationBean<Workprice> paginationBean) {
		this.paginationBean = paginationBean;
	}

	public int getWorkpricetbId() {
		return workpricetbId;
	}

	public void setWorkpricetbId(int workpricetbId) {
		this.workpricetbId = workpricetbId;
	}

	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}

	public Workprice getWorkprice() {
		return workprice;
	}

	public void setWorkprice(Workprice workprice) {
		this.workprice = workprice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
