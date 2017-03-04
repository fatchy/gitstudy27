package com.craftsman.ssm.entity;

import java.util.Arrays;
import java.util.Date;

public class Article {
    private Integer articletbId;

    private Integer articletbType;

    private String articletbAuthor;

    private Date articletbTime;

    private String articletbTitle;

    private String articletbPath;

    private byte[] articletbContent;

    public Integer getArticletbId() {
        return articletbId;
    }

    public void setArticletbId(Integer articletbId) {
        this.articletbId = articletbId;
    }

    public Integer getArticletbType() {
        return articletbType;
    }

    public void setArticletbType(Integer articletbType) {
        this.articletbType = articletbType;
    }

    public String getArticletbAuthor() {
        return articletbAuthor;
    }

    public void setArticletbAuthor(String articletbAuthor) {
        this.articletbAuthor = articletbAuthor == null ? null : articletbAuthor.trim();
    }

    public Date getArticletbTime() {
        return articletbTime;
    }

    public void setArticletbTime(Date articletbTime) {
        this.articletbTime = articletbTime;
    }

    public String getArticletbTitle() {
        return articletbTitle;
    }

    public void setArticletbTitle(String articletbTitle) {
        this.articletbTitle = articletbTitle == null ? null : articletbTitle.trim();
    }

    public String getArticletbPath() {
        return articletbPath;
    }

    public void setArticletbPath(String articletbPath) {
        this.articletbPath = articletbPath == null ? null : articletbPath.trim();
    }

    public byte[] getArticletbContent() {
        return articletbContent;
    }

    public void setArticletbContent(byte[] articletbContent) {
        this.articletbContent = articletbContent;
    }

	@Override
	public String toString() {
		return "Article [articletbId=" + articletbId + ", articletbType=" + articletbType + ", articletbAuthor="
				+ articletbAuthor + ", articletbTime=" + articletbTime + ", articletbTitle=" + articletbTitle
				+ ", articletbPath=" + articletbPath + ", articletbContent=" + Arrays.toString(articletbContent) + "]";
	}
    
}