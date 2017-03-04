package com.craftsman.ssm.service;

import com.craftsman.ssm.bean.ArticlesBean;
import com.craftsman.ssm.entity.Article;
import com.craftsman.ssm.entity.Pagination;

public interface ArticleService {
	/*
	 * 分页查询
	 */
	public  ArticlesBean  list(Pagination pagination);
	
	/*
	 * 添加
	 */
	public int insertOne(Article article);
	/*
	 * 删除
	 */
	public int deleteOne(Integer  articletbId);
	/*
	 * 更新
	 */
	public int updateOne(Article article);
	
	
}
