package com.craftsman.ssm.mapper;

import com.craftsman.ssm.entity.Log;

public interface LogMapper {
    int deleteByPrimaryKey(Integer logtbId);

    int insert(Log record);

    int insertSelective(Log record);

    Log selectByPrimaryKey(Integer logtbId);

    int updateByPrimaryKeySelective(Log record);

    int updateByPrimaryKey(Log record);
}