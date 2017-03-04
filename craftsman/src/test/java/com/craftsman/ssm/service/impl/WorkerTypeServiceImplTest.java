package com.craftsman.ssm.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.entity.WorkerType;
import com.craftsman.ssm.service.WorkerTypeService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/*.xml")
public class WorkerTypeServiceImplTest {
	@Autowired 
	private WorkerTypeService workerTypeService;
	@Test
	public void testFindWorkerType() {
		WorkerType workerType=new WorkerType();
		workerType.setWorkertypetbName("水电工");
		workerType.setWorkertypetbSummary("装水电");
		workerType.setWorkertypetbPic("upload/images/144196284220910.png");
		System.out.println(workerTypeService.insertOne(workerType));
	}

	@Test
	public void testInsertOne() {
		fail("Not yet implemented");
	}
	@Test
	public void testfindAll() {
		System.out.println(workerTypeService.getAll());
	}


}
