package com.craftsman.ssm.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.entity.Pagination;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/*.xml")
public class WorkerMapperTest {

	@Autowired
	private WorkerMapper workerMapper;

	@Test
	public void testListWorker() {
		Pagination pagination = new Pagination();
		pagination.setMin(2);
		pagination.setRows(5);
		pagination.setQueryStr("闵行");
		System.out.println(workerMapper.listWorker(pagination));
	}

	@Test
	public void testGetCount() {
		System.out.println(workerMapper.getCount());
	}

}
