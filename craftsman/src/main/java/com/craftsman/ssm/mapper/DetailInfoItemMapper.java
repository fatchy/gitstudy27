package com.craftsman.ssm.mapper;

import com.craftsman.ssm.entity.DetailInfoItem;

public interface DetailInfoItemMapper {
    int deleteByPrimaryKey(Integer detailinfoitemtbId);

    int insert(DetailInfoItem record);

    int insertSelective(DetailInfoItem record);

    DetailInfoItem selectByPrimaryKey(Integer detailinfoitemtbId);

    int updateByPrimaryKeySelective(DetailInfoItem record);

    int updateByPrimaryKey(DetailInfoItem record);
}