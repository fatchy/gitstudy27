package com.craftsman.ssm.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.craftsman.ssm.entity.Reservation;
import com.craftsman.ssm.entity.ReservationInfo;
import com.mysql.fabric.xmlrpc.base.Data;

public interface ReservationMapper {
    int deleteByPrimaryKey(Integer reservationtbId);

    int insert(Reservation record);

    int insertSelective(Reservation record);

    Reservation selectByPrimaryKey(Integer reservationtbId);

    int updateByPrimaryKeySelective(Reservation record);

    int updateByPrimaryKey(Reservation record);
    Reservation selectByWorkerId( Integer workerId, Date serviceDate, Integer serviceTime);
    
    
    
    
   

   

    

   

   


    
   
    List<Reservation> getReservations(ReservationInfo reservationInfo);
}