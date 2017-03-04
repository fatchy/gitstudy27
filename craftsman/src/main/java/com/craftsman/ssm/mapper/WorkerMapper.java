package com.craftsman.ssm.mapper;

import java.util.List;

import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Worker;
import com.craftsman.ssm.entity.WorkerType;

public interface WorkerMapper {

	/*
	 * 更新
	 */
	int updateByPrimaryKeySelective(Worker record);

	List<Worker> listWorker(Pagination pagination);

	int getCount();
	
	/*
	 * 根据工工种查询工人
	 */
	List<Worker> findWorkerByWorkerType(WorkerType workerType);

	int insertSelective(Worker worker);

	int deleteByPrimaryKey(Integer workertbId);
	
	Worker selectByWorkertbId(Integer workertbId);
	

	Worker getWorkerInfo(Integer workerId);
}