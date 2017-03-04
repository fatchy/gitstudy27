package com.craftsman.ssm.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.craftsman.ssm.entity.Reservation;
import com.craftsman.ssm.entity.ReservationInfo;
import com.craftsman.ssm.mapper.ReservationMapper;
import com.craftsman.ssm.service.ReservationService;
@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	private ReservationMapper reservationMapper;
	public Reservation getReservation(Integer workerId, Date serviceDate,
			Integer serviceTime) {
		Reservation reservation=reservationMapper.selectByWorkerId(workerId, serviceDate, serviceTime);
		return reservation;
	}
	public int insertReservation(Reservation record) {
		int row=reservationMapper.insertSelective(record);
		return row;
	}
	public List<Reservation> getAllReservation(ReservationInfo reservationInfo) {
		List<Reservation> reservations=reservationMapper.getReservations(reservationInfo);
		return reservations;
	}

}
