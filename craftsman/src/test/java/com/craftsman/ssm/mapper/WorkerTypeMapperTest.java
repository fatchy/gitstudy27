package com.craftsman.ssm.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.entity.Pagination;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/*.xml")
public class WorkerTypeMapperTest {
	@Autowired
	private WorkerTypeMapper workerTypeMapper;

	@Test
	public void testFindWorkerType() {
		System.out.println(workerTypeMapper.findWorkerType());
		System.out.println(workerTypeMapper.findAll());
		System.out.println(workerTypeMapper.getCount());
	}

	@Test
	public void testSelectByPagination() {
		System.out.println(workerTypeMapper.getCount());
		System.out.println(workerTypeMapper.selectByPagination(new Pagination()));
	}

}
