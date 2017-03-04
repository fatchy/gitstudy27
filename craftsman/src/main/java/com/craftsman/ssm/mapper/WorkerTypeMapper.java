package com.craftsman.ssm.mapper;

import java.util.List;

import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.WorkerType;

public interface WorkerTypeMapper {
	List<WorkerType> findWorkerType();
	/*
	 * 获取所有工种，只查询两个字段 id name
	 */
	List<WorkerType> findAll();
	/*
	 * 分页查询
	 */
	List<WorkerType> selectByPagination(Pagination pagination);
	/*
	 * 获取总数
	 */
	int getCount();
	/*
	 * 根据id删除
	 */
    int deleteByPrimaryKey(Integer workertypetbId);
    
    int insert(WorkerType record);
    /*
     * 插入数据
     */
    int insertSelective(WorkerType record);
    /*
     * 根据id查询工种
     */
    WorkerType selectByPrimaryKey(Integer workertypetbId);
    /*
     * 更新工种
     */
    int updateByPrimaryKeySelective(WorkerType record);
    
    

    int updateByPrimaryKey(WorkerType record);
    
}
