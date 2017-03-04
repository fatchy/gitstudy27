package com.craftsman.ssm.mapper;

import com.craftsman.ssm.entity.OrderContent;

public interface OrderContentMapper {
    int deleteByPrimaryKey(Integer ordercontenttbId);
    
    /*
     * 插入订单内容
     * @param OrderContent 订单内容实体类
     */
    int insert(OrderContent record);

    OrderContent selectByPrimaryKey(Integer ordercontenttbId);
    
    int updateByPrimaryKeySelective(OrderContent record);

    int updateByPrimaryKey(OrderContent record);
    /*
     * 查找订单内容
     * @param orderid 订单id
     */
    OrderContent selectByOrderId(Integer orderid);
 
    int quickorder(OrderContent rderContent);

}