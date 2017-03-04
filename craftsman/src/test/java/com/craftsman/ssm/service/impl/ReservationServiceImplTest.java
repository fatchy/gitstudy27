package com.craftsman.ssm.service.impl;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.craftsman.ssm.entity.Reservation;
import com.craftsman.ssm.entity.ReservationInfo;
import com.craftsman.ssm.service.ReservationService;
import com.mysql.fabric.xmlrpc.base.Data;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/*.xml")
public class ReservationServiceImplTest {
	@Autowired
	private ReservationService reservationService;
	@Test
	public void testGetReservation() throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = "2015-09-12";
		Date date=sdf.parse(strDate);
		Reservation reservation=reservationService.getReservation(1, date, 1);
		System.out.println(reservation);
	}
	
	@Test
	public void testInsertReservation(){
		Reservation reservation=new Reservation();
		reservation.setOrdertbId(1);
		reservation.setReservationtbDate(new Date());
		reservation.setReservationtbPeriod(1);
		reservation.setWorkertbId(1);
		int row=reservationService.insertReservation(reservation);
		System.out.println(row);
	}
	
	@Test
	public void testGetAllReservation() throws ParseException{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String firstDate = "2015-09-14";
		String lastDate="2015-09-16";
		Date firstdate=sdf.parse(firstDate);
		Date lastdate=sdf.parse(lastDate);
		ReservationInfo reservationInfo=new ReservationInfo();
		reservationInfo.setFirstDate(firstdate);
		reservationInfo.setLastDate(lastdate);
		reservationInfo.setWorkerId(1);
		
		System.out.println(reservationService.getAllReservation(reservationInfo));
	}

}
