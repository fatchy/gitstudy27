package com.craftsman.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.craftsman.ssm.bean.UserBean;
import com.craftsman.ssm.bean.WorkerBean;
import com.craftsman.ssm.entity.Admin;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.User;
import com.craftsman.ssm.entity.Worker;
import com.craftsman.ssm.entity.WorkerType;
import com.craftsman.ssm.mapper.AdminMapper;
import com.craftsman.ssm.mapper.UserMapper;
import com.craftsman.ssm.mapper.WorkerMapper;
import com.craftsman.ssm.service.AdminService;
import com.craftsman.ssm.service.UserService;
import com.craftsman.ssm.service.WorkerService;

@Service("workerService")
public class WorkerServiceImpl implements WorkerService {
	@Autowired
	private WorkerMapper workerMapper;

	/*
	 * 分页查询
	 */
	public WorkerBean listWorker(Pagination pagination) {
		WorkerBean workerBean = new WorkerBean();
		pagination.setTotal(workerBean.getTotal());
		pagination.setParamMin();
		List<Worker> list = workerMapper.listWorker(pagination);
		workerBean.setRows(list);
		workerBean.setTotal(getCount());
		return workerBean;
	}

	/*
	 * 获取总数
	 */
	public int getCount() {

		return workerMapper.getCount();
	}

	/*
	 * 根据工种查找工人
	 */
	public List<Worker> findWorkerByWorkerType(WorkerType workerType) {
		List<Worker> workers = workerMapper.findWorkerByWorkerType(workerType);
		return workers;
	}

	public int insertOne(Worker worker) {

		return workerMapper.insertSelective(worker);
	}
	/*
	 * 删除一条数据
	 */

	public int deleteOne(Integer workertbId) {

		return workerMapper.deleteByPrimaryKey(workertbId);
	}

	/*
	 * 更新一条数据
	 */
	public int updateOne(Worker worker) {

		return workerMapper.updateByPrimaryKeySelective(worker);
	}

	public Worker getWorkerInfoById(Integer workerId) {
		Worker worker=workerMapper.getWorkerInfo(workerId);
		return worker;
	}
}
