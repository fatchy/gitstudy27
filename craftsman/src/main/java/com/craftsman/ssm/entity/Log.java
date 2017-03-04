package com.craftsman.ssm.entity;

import java.util.Date;

public class Log {
    private Integer logtbId;

    private Date logtbTime;

    private String logtbContent;

    private String alternative1;

    private String alternative2;

    private String alternative3;

    public Integer getLogtbId() {
        return logtbId;
    }

    public void setLogtbId(Integer logtbId) {
        this.logtbId = logtbId;
    }

    public Date getLogtbTime() {
        return logtbTime;
    }

    public void setLogtbTime(Date logtbTime) {
        this.logtbTime = logtbTime;
    }

    public String getLogtbContent() {
        return logtbContent;
    }

    public void setLogtbContent(String logtbContent) {
        this.logtbContent = logtbContent == null ? null : logtbContent.trim();
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