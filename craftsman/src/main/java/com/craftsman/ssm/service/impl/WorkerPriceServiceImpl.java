package com.craftsman.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.craftsman.ssm.bean.PaginationBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Workprice;
import com.craftsman.ssm.mapper.WorkpriceMapper;
import com.craftsman.ssm.service.WorkerPriceService;
import com.opensymphony.xwork2.Action;

@Service("workerPriceService")
public class WorkerPriceServiceImpl implements WorkerPriceService {
	@Autowired
	private WorkpriceMapper workpriceMapper;
	private Pagination pagination;
	private PaginationBean<Workprice> paginationBean;

	public List<Workprice> selectPriceService(Pagination pagination) {
		List<Workprice> list = new ArrayList<Workprice>();
		list = workpriceMapper.selectByQueryStr(pagination);
		return list;
	}

	public PaginationBean<Workprice> selectByPagination(Pagination pagination) {
		paginationBean = new PaginationBean<Workprice>();
		List<Workprice> list = workpriceMapper.selectByQueryStr(pagination);
		paginationBean.setRows(list);
		paginationBean.setTotal(workpriceMapper.getCount());
		return paginationBean;
	}

	public int deleteById(Integer workpricetbId) {

		return workpriceMapper.deleteByPrimaryKey(workpricetbId);
	}

	public int insertOne(Workprice workprice) {

		return workpriceMapper.insertSelective(workprice);
	}

	public int updateOne(Workprice workprice) {
		
		return workpriceMapper.updateByPrimaryKeySelective(workprice);
	}

}
