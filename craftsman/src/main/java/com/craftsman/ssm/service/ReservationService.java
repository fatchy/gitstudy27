package com.craftsman.ssm.service;



import java.util.Date;
import java.util.List;

import com.craftsman.ssm.entity.Reservation;
import com.craftsman.ssm.entity.ReservationInfo;

public interface ReservationService {
	 public Reservation getReservation( Integer workerId, Date serviceDate, Integer serviceTime);
	 public int insertReservation(Reservation record);
	 public List<Reservation> getAllReservation(ReservationInfo reservationInfo);
}
