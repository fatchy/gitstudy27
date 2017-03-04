package com.craftsman.ssm.entity;

import java.util.Date;

public class Picture {
    private Integer picturebId;

    private String picturebPath;

    private String picturebName;

    private Date picturebTime;

    private byte[] picturebImg;

    public Integer getPicturebId() {
        return picturebId;
    }

    public void setPicturebId(Integer picturebId) {
        this.picturebId = picturebId;
    }

    public String getPicturebPath() {
        return picturebPath;
    }

    public void setPicturebPath(String picturebPath) {
        this.picturebPath = picturebPath == null ? null : picturebPath.trim();
    }

    public String getPicturebName() {
        return picturebName;
    }

    public void setPicturebName(String picturebName) {
        this.picturebName = picturebName == null ? null : picturebName.trim();
    }

    public Date getPicturebTime() {
        return picturebTime;
    }

    public void setPicturebTime(Date picturebTime) {
        this.picturebTime = picturebTime;
    }

    public byte[] getPicturebImg() {
        return picturebImg;
    }

    public void setPicturebImg(byte[] picturebImg) {
        this.picturebImg = picturebImg;
    }
}