package com.craftsman.ssm.mapper;

import com.craftsman.ssm.entity.WorkerCase;

public interface WorkerCaseMapper {
    int deleteByPrimaryKey(Integer workercasetbId);

    int insert(WorkerCase record);

    int insertSelective(WorkerCase record);

    WorkerCase selectByPrimaryKey(Integer workercasetbId);

    int updateByPrimaryKeySelective(WorkerCase record);

    int updateByPrimaryKey(WorkerCase record);
    
}