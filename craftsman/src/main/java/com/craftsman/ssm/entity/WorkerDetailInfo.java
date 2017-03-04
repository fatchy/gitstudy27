package com.craftsman.ssm.entity;

public class WorkerDetailInfo {
    private Integer workerdetailinfotbId;

    private Integer workertbId;

    private Integer detailinfoitemtbId;

    private String workerdetailinfotbContent;

    private String alternative1;

    private String alternative2;

    private String alternative3;

    public Integer getWorkerdetailinfotbId() {
        return workerdetailinfotbId;
    }

    public void setWorkerdetailinfotbId(Integer workerdetailinfotbId) {
        this.workerdetailinfotbId = workerdetailinfotbId;
    }

    public Integer getWorkertbId() {
        return workertbId;
    }

    public void setWorkertbId(Integer workertbId) {
        this.workertbId = workertbId;
    }

    public Integer getDetailinfoitemtbId() {
        return detailinfoitemtbId;
    }

    public void setDetailinfoitemtbId(Integer detailinfoitemtbId) {
        this.detailinfoitemtbId = detailinfoitemtbId;
    }

    public String getWorkerdetailinfotbContent() {
        return workerdetailinfotbContent;
    }

    public void setWorkerdetailinfotbContent(String workerdetailinfotbContent) {
        this.workerdetailinfotbContent = workerdetailinfotbContent == null ? null : workerdetailinfotbContent.trim();
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