package com.craftsman.ssm.mapper;

import com.craftsman.ssm.entity.CasePicture;

public interface CasePictureMapper {
    int deleteByPrimaryKey(Integer casepicturetbId);

    int insert(CasePicture record);

    int insertSelective(CasePicture record);

    CasePicture selectByPrimaryKey(Integer casepicturetbId);

    int updateByPrimaryKeySelective(CasePicture record);

    int updateByPrimaryKey(CasePicture record);
}