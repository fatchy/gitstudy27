package com.craftsman.ssm.entity;

public class WorkerCase {
    private Integer workercasetbId;

    private Integer workertbId;

    private String workercasetbName;

    private String workertypetbSummary;

    private String workertypetbPic;

    private String alternative1;

    private String alternative2;

    private String alternative3;

    public Integer getWorkercasetbId() {
        return workercasetbId;
    }

    public void setWorkercasetbId(Integer workercasetbId) {
        this.workercasetbId = workercasetbId;
    }

    public Integer getWorkertbId() {
        return workertbId;
    }

    public void setWorkertbId(Integer workertbId) {
        this.workertbId = workertbId;
    }

    public String getWorkercasetbName() {
        return workercasetbName;
    }

    public void setWorkercasetbName(String workercasetbName) {
        this.workercasetbName = workercasetbName == null ? null : workercasetbName.trim();
    }

    public String getWorkertypetbSummary() {
        return workertypetbSummary;
    }

    public void setWorkertypetbSummary(String workertypetbSummary) {
        this.workertypetbSummary = workertypetbSummary == null ? null : workertypetbSummary.trim();
    }

    public String getWorkertypetbPic() {
        return workertypetbPic;
    }

    public void setWorkertypetbPic(String workertypetbPic) {
        this.workertypetbPic = workertypetbPic == null ? null : workertypetbPic.trim();
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