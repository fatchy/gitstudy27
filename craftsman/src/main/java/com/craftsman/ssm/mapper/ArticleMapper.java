package com.craftsman.ssm.mapper;

import java.util.List;
import com.craftsman.ssm.entity.Article;
import com.craftsman.ssm.entity.Pagination;

public interface ArticleMapper {

	/*
	 * 删除文章
	 * 
	 * @param articletbId 文章id
	 */
	int deleteByPrimaryKey(Integer articletbId);

	/*
	 * 插入文章 插入一条数据 Mysql的INDENTITY自动增长(自动回写) 优先使用传入的参数值,参数值空时,才会使用序列、UUID,自动增长
	 * 
	 * @param record 文章对象
	 */
	int insert(Article record);

	/*
	 * 插入一条数据,只插入不为null的字段,不会影响有默认值的字段 Mysql的INDENTITY自动增长(自动回写)
	 * 优先使用传入的参数值,参数值空时,才会使用序列、UUID,自动增长
	 * 
	 * @param record 文章实体类
	 */
	int insertSelective(Article record);

	/*
	 * 查询文章
	 * 
	 * @param articletbId 文章id
	 */
	Article selectByPrimaryKey(Integer articletbId);
	/*
	 * 根据主键进行更新,这里最多只会更新一条数据
	 * 
	 * @param record 文章实体类
	 */

	int updateByPrimaryKeySelective(Article record);

	int updateByPrimaryKeyWithBLOBs(Article record);
	/*
	 * 根据主键进行更新 只会更新不是null的数据
	 * 
	 * @param record 文章实体类
	 */

	int updateByPrimaryKey(Article record);

	/*
	 * 分页查询
	 * @param Pagination 分页模型实体
	 */
	List<Article> findArticleByPage(Pagination pagination);

	int getCount();
}