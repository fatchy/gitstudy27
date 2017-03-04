package com.craftsman.ssm.mapper;

import com.craftsman.ssm.entity.Picture;

public interface PictureMapper {
    int deleteByPrimaryKey(Integer picturebId);

    int insert(Picture record);

    int insertSelective(Picture record);

    Picture selectByPrimaryKey(Integer picturebId);

    int updateByPrimaryKeySelective(Picture record);

    int updateByPrimaryKeyWithBLOBs(Picture record);

    int updateByPrimaryKey(Picture record);
}