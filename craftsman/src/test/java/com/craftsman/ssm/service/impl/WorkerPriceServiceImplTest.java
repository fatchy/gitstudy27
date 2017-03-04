package com.craftsman.ssm.service.impl;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Workprice;
import com.craftsman.ssm.service.WorkerPriceService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/*.xml")
public class WorkerPriceServiceImplTest {
	@Autowired
	private WorkerPriceService workerPriceService;
	@Test
	public void testSelectPriceService() {
		Pagination pagination=new Pagination();
		pagination.setQueryStr("吊顶");
		List<Workprice> list=new ArrayList<Workprice>();
		list=workerPriceService.selectPriceService(pagination);
		System.out.println(list);
		System.out.println(list.size());
	}

}
