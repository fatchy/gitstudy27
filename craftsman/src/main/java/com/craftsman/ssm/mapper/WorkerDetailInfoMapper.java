package com.craftsman.ssm.mapper;

import com.craftsman.ssm.entity.WorkerDetailInfo;

public interface WorkerDetailInfoMapper {
    int deleteByPrimaryKey(Integer workerdetailinfotbId);

    int insert(WorkerDetailInfo record);

    int insertSelective(WorkerDetailInfo record);

    WorkerDetailInfo selectByPrimaryKey(Integer workerdetailinfotbId);

    int updateByPrimaryKeySelective(WorkerDetailInfo record);

    int updateByPrimaryKey(WorkerDetailInfo record);
    
 
}