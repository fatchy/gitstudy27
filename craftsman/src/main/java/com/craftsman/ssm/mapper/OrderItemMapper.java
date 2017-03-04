package com.craftsman.ssm.mapper;

import java.util.List;

import com.craftsman.ssm.entity.OrderContent;
import com.craftsman.ssm.entity.OrderItem;

public interface OrderItemMapper {
    int deleteByPrimaryKey(Integer orderitemtbId);
    int insert(OrderItem record);
    int insertSelective(OrderItem record);
    OrderItem selectByPrimaryKey(Integer orderitemtbId);
    int updateByPrimaryKeySelective(OrderItem record);
    int updateByPrimaryKey(OrderItem record);
    int listInsert(List<OrderItem> list);
    List<OrderItem> selectByCountId(Integer ordercontenttbId);
    
}