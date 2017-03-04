package com.craftsman.ssm.service;

import java.util.List;

import com.craftsman.ssm.bean.WorkerBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Worker;
import com.craftsman.ssm.entity.WorkerType;

public interface WorkerService {
	/*
	 * @param rows每页的行数
	 * 
	 * @param page查询的页数
	 */
	public WorkerBean listWorker(Pagination pagination);

	public int getCount();

	List<Worker> findWorkerByWorkerType(WorkerType workerType);

	int insertOne(Worker worker);
	
	int updateOne(Worker worker);
	
	int deleteOne(Integer workertbId);
	
	public Worker getWorkerInfoById(Integer workerId);

}
