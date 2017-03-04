package com.craftsman.ssm.service;

import java.util.List;

import com.craftsman.ssm.bean.PaginationBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Workprice;

public interface WorkerPriceService {
	public  List<Workprice> selectPriceService(Pagination pagination);
	public   PaginationBean<Workprice> selectByPagination(Pagination pagination);
	public int deleteById(Integer workpricetbId);
	public int insertOne(Workprice workprice);
	public int updateOne(Workprice workprice);
}
