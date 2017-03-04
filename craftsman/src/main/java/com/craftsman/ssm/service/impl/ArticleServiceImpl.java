package com.craftsman.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.craftsman.ssm.bean.ArticlesBean;
import com.craftsman.ssm.entity.Admin;
import com.craftsman.ssm.entity.Article;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.mapper.AdminMapper;
import com.craftsman.ssm.mapper.ArticleMapper;
import com.craftsman.ssm.service.AdminService;
import com.craftsman.ssm.service.ArticleService;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
	@Autowired
	private ArticleMapper articleMapper;

	public ArticlesBean list(Pagination pagination) {
		List<Article> list = articleMapper.findArticleByPage(pagination);
		ArticlesBean articlesBean = new ArticlesBean();
		articlesBean.setRows(list);
		articlesBean.setTotal(articleMapper.getCount());
		return articlesBean;
	}

	public int insertOne(Article article) {

		return articleMapper.insertSelective(article);
	}

	public int deleteOne(Integer articletbId) {

		return articleMapper.deleteByPrimaryKey(articletbId);
	}

	public int updateOne(Article article) {

		return articleMapper.updateByPrimaryKeySelective(article);
	}

}
