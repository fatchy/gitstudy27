package com.craftsman.ssm.service.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.bean.WorkerBean;
import com.craftsman.ssm.entity.Pagination;
import com.craftsman.ssm.entity.Worker;
import com.craftsman.ssm.service.WorkerService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/*.xml")
public class WorkerServiceImplTest {
	@Autowired
	private WorkerService workerService;
	private WorkerBean workerBean;
	@Test
	public void testFindAllWorkerInfo() {
		Pagination pagination=new Pagination();
		pagination.setMin(2);
		pagination.setRows(5);
		pagination.setQueryStr("吊顶");
		workerBean=workerService.listWorker(pagination);
		System.out.println(workerBean);
		
	}
	@Test
	public void testInsert(){
		Worker w=new Worker();
		w.setWorkertbName("李");
		w.setWorkertypetbId(1);
		System.out.println(workerService.insertOne(w));
		
	}

}
