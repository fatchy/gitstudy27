package com.craftsman.ssm.mapper;

import java.util.List;
import java.util.Map;

import com.craftsman.ssm.entity.Order;
import com.craftsman.ssm.entity.OrderInfo;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.User;

public interface OrderMapper {
	/*
	 * 删除订单
	 * 
	 * @param ordertbId 订单id
	 */
	int deleteByPrimaryKey(Integer ordertbId);

	/*
	 * 插入订单
	 * 
	 * @param record 订单实体
	 */
	int insert(Order record);

	/*
	 * 查找订单
	 * 
	 * @param ordertbId 订单id
	 */
	Order selectByPrimaryKey(Integer ordertbId);

	/*
	 * 修改订单
	 * 
	 * @param record 订单实体 只会更新不是null的数据，且根据主键id更新
	 */
	int updateByPrimaryKeySelective(Order record);

	/*
	 * 修改订单
	 * 
	 * @param record @param record 订单实体
	 */
	int updateByPrimaryKey(Order record);
	/*
	 * 查询订单
	 * 
	 * @param user 用户实体 根据用户id查询订单
	 */

	List<OrderInfo> selectByUserId(User user);

	/*
	 * 分页查询
	 * 
	 * @param Pagination 分页实体
	 */
	List<Order> selectByPagination(Pagination pagination);

	/*
	 * 获取订单总数
	 */
	int getCount();
	
	/*
	 * 获取订单
	 * @param  
	 */
	
	
	
	
	
	int quickorder(Order record, Map<String, Object> session);
	List<OrderInfo> getOrdersInfo(User user);


	//更新订单的评论状态
	int updateOrderevaluationState(Order order);
	
	
	

	

	

	

	


	

	
	
 
}