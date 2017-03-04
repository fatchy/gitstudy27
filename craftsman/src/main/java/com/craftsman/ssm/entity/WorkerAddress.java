package com.craftsman.ssm.entity;

public class WorkerAddress {
    private Integer workeraddresstb;

    private Integer workertbId;

    private String workeraddresstbAddress;



    public Integer getWorkeraddresstb() {
        return workeraddresstb;
    }

    public void setWorkeraddresstb(Integer workeraddresstb) {
        this.workeraddresstb = workeraddresstb;
    }

    public Integer getWorkertbId() {
        return workertbId;
    }

    public void setWorkertbId(Integer workertbId) {
        this.workertbId = workertbId;
    }

    public String getWorkeraddresstbAddress() {
        return workeraddresstbAddress;
    }

    public void setWorkeraddresstbAddress(String workeraddresstbAddress) {
        this.workeraddresstbAddress = workeraddresstbAddress == null ? null : workeraddresstbAddress.trim();
    }

	@Override
	public String toString() {
		return "WorkerAddress [workeraddresstb=" + workeraddresstb + ", workertbId=" + workertbId
				+ ", workeraddresstbAddress=" + workeraddresstbAddress + "]";
	}


}