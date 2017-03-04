package com.craftsman.ssm.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.entity.Reservation;
import com.craftsman.ssm.entity.ReservationInfo;
import com.craftsman.ssm.service.ReservationService;

@Controller("reservationAction")
@Scope("prototype")
public class ReservationAction {
	private String firstDate;
	private Integer workerId;
	private String lastDate;
	
	private ReservationInfo reservationInfo;
	private SimpleDateFormat formater;
	private Date firstdate=null;
	private Date lastdate=null;
	@Autowired
	private ReservationService reservationService;
	private List<Reservation> reservations;
	
	public List<Reservation> getReservations() {
		return reservations;
	}
	public void setReservations(List<Reservation> reservations) {
		this.reservations = reservations;
	}
	public String getFirstDate() {
		return firstDate;
	}
	public void setFirstDate(String firstDate) {
		this.firstDate = firstDate;
	}
	public Integer getWorkerId() {
		return workerId;
	}
	public void setWorkerId(Integer workerId) {
		this.workerId = workerId;
	}
	public String getLastDate() {
		return lastDate;
	}
	public void setLastDate(String lastDate) {
		this.lastDate = lastDate;
	}
	public String getReservationSchedule() throws ParseException{
		System.out.println(firstDate);
		System.out.println(workerId);
		formater = new SimpleDateFormat();  
        formater.applyPattern("yyyy-MM-dd");  
		firstdate=formater.parse(firstDate); 
		lastdate=formater.parse(lastDate);
		reservationInfo=new ReservationInfo();
		reservationInfo.setFirstDate(firstdate);
		reservationInfo.setLastDate(lastdate);
		reservationInfo.setWorkerId(workerId);
		reservations=reservationService.getAllReservation(reservationInfo);
		System.out.println(reservations);
		
		return "getReservationSchedule";
	}

}
