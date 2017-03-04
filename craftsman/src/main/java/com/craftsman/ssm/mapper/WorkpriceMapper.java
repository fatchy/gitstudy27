package com.craftsman.ssm.mapper;

import java.util.List;

import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Workprice;

public interface WorkpriceMapper {
	int deleteByPrimaryKey(Integer workpricetbId);

	int insert(Workprice record);

	int insertSelective(Workprice record);

	Workprice selectByPrimaryKey(Integer workpricetbId);

	int updateByPrimaryKeySelective(Workprice record);

	int updateByPrimaryKey(Workprice record);

	/*
	 * 根据查询参数查询工作价格 参数可以是工种名，也可以是工作名，使用的是模糊查询
	 */
	List<Workprice> selectByQueryStr(Pagination pagination);
	/*
	 * 分页查询
	 */
	List<Workprice> selectByPaginarion(Pagination pagination);
	
	/*
	 * 获取总数
	 */
	int getCount();
	


}