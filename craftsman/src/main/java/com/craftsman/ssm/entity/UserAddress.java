package com.craftsman.ssm.entity;

public class UserAddress {
    private Integer useraddresstbId;

    private Integer usertbId;

    private String useraddresstbAddress;

    private String alternative1;

    private String alternative2;

    private String alternative3;

    public Integer getUseraddresstbId() {
        return useraddresstbId;
    }

    public void setUseraddresstbId(Integer useraddresstbId) {
        this.useraddresstbId = useraddresstbId;
    }

    public Integer getUsertbId() {
        return usertbId;
    }

    public void setUsertbId(Integer usertbId) {
        this.usertbId = usertbId;
    }

    public String getUseraddresstbAddress() {
        return useraddresstbAddress;
    }

    public void setUseraddresstbAddress(String useraddresstbAddress) {
        this.useraddresstbAddress = useraddresstbAddress == null ? null : useraddresstbAddress.trim();
    }

    public String getAlternative1() {
        return alternative1;
    }

    public void setAlternative1(String alternative1) {
        this.alternative1 = alternative1 == null ? null : alternative1.trim();
    }

    public String getAlternative2() {
        return alternative2;
    }

    public void setAlternative2(String alternative2) {
        this.alternative2 = alternative2 == null ? null : alternative2.trim();
    }

    public String getAlternative3() {
        return alternative3;
    }

    public void setAlternative3(String alternative3) {
        this.alternative3 = alternative3 == null ? null : alternative3.trim();
    }
}