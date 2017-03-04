package com.craftsman.ssm.entity;

public class DetailInfoItem {
    private Integer detailinfoitemtbId;

    private String detailinfoitemtbName;

    private String alternative1;

    private String alternative2;

    private String alternative3;

    public Integer getDetailinfoitemtbId() {
        return detailinfoitemtbId;
    }

    public void setDetailinfoitemtbId(Integer detailinfoitemtbId) {
        this.detailinfoitemtbId = detailinfoitemtbId;
    }

    public String getDetailinfoitemtbName() {
        return detailinfoitemtbName;
    }

    public void setDetailinfoitemtbName(String detailinfoitemtbName) {
        this.detailinfoitemtbName = detailinfoitemtbName == null ? null : detailinfoitemtbName.trim();
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