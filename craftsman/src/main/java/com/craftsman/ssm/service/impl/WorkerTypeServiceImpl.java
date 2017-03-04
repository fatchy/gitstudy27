package com.craftsman.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.bean.PaginationBean;
import com.craftsman.ssm.bean.WorkerBean;
import com.craftsman.ssm.bean.WorkerTypeBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.WorkerType;
import com.craftsman.ssm.mapper.WorkerTypeMapper;
import com.craftsman.ssm.service.WorkerTypeService;

@Service("workerTypeService")
public class WorkerTypeServiceImpl implements WorkerTypeService {
	@Autowired
	private WorkerTypeMapper workerTypeMapper;
	private WorkerTypeBean workerTypeBean;
	private PaginationBean<WorkerType> paginationBean;

	public WorkerTypeBean findWorkerType() {
		workerTypeBean = new WorkerTypeBean();

		List<WorkerType> workerTypes = workerTypeMapper.findWorkerType();
		workerTypeBean.setRows(workerTypes);
		workerTypeBean.setTotal(workerTypeMapper.getCount());

		return workerTypeBean;
	}
	/*
	 * 分页查询
	 */

	public WorkerTypeBean listBypagination(Pagination pagination) {
		workerTypeBean = new WorkerTypeBean();

		List<WorkerType> workerTypes = workerTypeMapper.selectByPagination(pagination);
		workerTypeBean.setRows(workerTypes);
		workerTypeBean.setTotal(workerTypeMapper.getCount());

		return workerTypeBean;
	}

	/*
	 * 插入一个
	 */
	public int insertOne(WorkerType workerType) {
		int result = workerTypeMapper.insertSelective(workerType);

		return result;
	}

	/*
	 * 获取所有
	 */
	public PaginationBean<WorkerType> getAll() {
		paginationBean = new PaginationBean<WorkerType>();

		paginationBean.setRows(workerTypeMapper.findAll());
		paginationBean.setTotal(workerTypeMapper.getCount());

		return paginationBean;

	}

	/*
	 * 更新一条数据
	 */
	public int updateOne(WorkerType workerType) {

		return workerTypeMapper.updateByPrimaryKeySelective(workerType);
	}

	public int deleteOne(int workertypetbId) {

		return workerTypeMapper.deleteByPrimaryKey(workertypetbId);
	}

	public List<WorkerType> findWorkerTypes() {
		List<WorkerType> workerTypes = workerTypeMapper.findWorkerType();
		return workerTypes;
	}

}
