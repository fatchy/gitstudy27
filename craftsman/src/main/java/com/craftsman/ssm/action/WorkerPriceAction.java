package com.craftsman.ssm.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.PaginationBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Workprice;
import com.craftsman.ssm.service.WorkerPriceService;
import com.opensymphony.xwork2.Action;

@Controller("workerPriceAction")
@Scope("prototype")
public class WorkerPriceAction {
	@Autowired
	private WorkerPriceService workerPriceService;
	private String searchstr;
	private Pagination pagination;
	private List<Workprice> list;

	public List<Workprice> getList() {
		return list;
	}

	public void setList(List<Workprice> list) {
		this.list = list;
	}

	public void setSearchstr(String searchstr) {
		this.searchstr = searchstr;
	}

	public String searchService() {
		System.out.println(searchstr);
		list = new ArrayList<Workprice>();
		pagination = new Pagination();
		pagination.setQueryStr(searchstr);
		list = workerPriceService.selectPriceService(pagination);
		System.out.println(list);
		return "findAllService";
	}

}
