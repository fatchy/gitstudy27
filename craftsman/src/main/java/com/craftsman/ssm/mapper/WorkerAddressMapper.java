package com.craftsman.ssm.mapper;

import com.craftsman.ssm.entity.WorkerAddress;

public interface WorkerAddressMapper {
    int deleteByPrimaryKey(Integer workeraddresstb);

    int insert(WorkerAddress record);

    int insertSelective(WorkerAddress record);

    WorkerAddress selectByPrimaryKey(Integer workeraddresstb);

    int updateByPrimaryKeySelective(WorkerAddress record);

    int updateByPrimaryKey(WorkerAddress record);

}