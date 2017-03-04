package com.craftsman.ssm.service;

import java.util.List;

import com.craftsman.ssm.bean.PaginationBean;
import com.craftsman.ssm.bean.WorkerTypeBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.WorkerType;

public interface WorkerTypeService {

	WorkerTypeBean findWorkerType();

	/*
	 * 插入一条数据
	 */
	int insertOne(WorkerType workerType);

	/*
	 * 获取所有的记录
	 */
	PaginationBean<WorkerType> getAll();

	/*
	 * 分页查询
	 */
	WorkerTypeBean listBypagination(Pagination pagination);

	/*
	 * 更新一条数据
	 */
	int updateOne(WorkerType workerType);

	/*
	 * 删除一台数据
	 */
	int deleteOne(int workertypetbId);
	
	List<WorkerType> findWorkerTypes();

}
