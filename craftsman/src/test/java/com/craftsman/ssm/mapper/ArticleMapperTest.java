package com.craftsman.ssm.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.entity.Article;
import com.craftsman.ssm.entity.Pagination;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring.xml")
public class ArticleMapperTest {

	@Autowired
	private ArticleMapper articleMapper;
	@Test
	public void testDeleteByPrimaryKey() {
		fail("Not yet implemented");
	}

	@Test
	public void testInsert() {
		Article a=new Article();
		a.setArticletbTitle("插入测试");
		a.setArticletbPath("a8.txt");
		a.setArticletbType(1);
		articleMapper.insertSelective(a);
		
	}

	@Test
	public void testInsertSelective() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectByPrimaryKey() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateByPrimaryKeySelective() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateByPrimaryKey() {
		fail("Not yet implemented");
	}
	@Test
	public void testFindArticleByPage() {
		Pagination pagination=new Pagination();
		pagination.setQueryStr("网络来源");
		System.out.println(articleMapper.findArticleByPage(pagination));
	}
	@Test
	public void testGetCount() {
	
		System.out.println(articleMapper.getCount());
	}
}
