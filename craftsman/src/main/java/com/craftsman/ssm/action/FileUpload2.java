package com.craftsman.ssm.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 多文件上传，用集合的方式
 * 
 * @author Administrator
 *
 */

public class FileUpload2 extends ActionSupport {

	private static final long serialVersionUID = 5788378063367738830L;
	private String usename;
	private List<File> file1;
	private List<String> file1FileName;
	private List<String> file1ContentType;

	public String getUsename() {
		return usename;
	}

	public void setUsename(String usename) {
		this.usename = usename;
	}

	public List<File> getFile1() {
		return file1;
	}

	public void setFile1(List<File> file1) {
		this.file1 = file1;
	}

	public List<String> getFile1FileName() {
		return file1FileName;
	}

	public void setFile1FileName(List<String> file1FileName) {
		this.file1FileName = file1FileName;
	}

	public List<String> getFile1ContentType() {
		return file1ContentType;
	}

	public void setFile1ContentType(List<String> file1ContentType) {
		this.file1ContentType = file1ContentType;
	}

	@Override
	public String execute() throws Exception {

		// 获取文件存储路径
		String path = ServletActionContext.getRequest().getRealPath("/upload");

		for (int i = 0; i < file1.size(); i++) {
			OutputStream os = new FileOutputStream(new File(path, file1FileName.get(i)));

			InputStream is = new FileInputStream(file1.get(i));

			byte[] buf = new byte[1024];
			int length = 0;

			while (-1 != (length = is.read(buf))) {
				os.write(buf, 0, length);
			}

			is.close();
			os.close();

		}

		return SUCCESS;
	}

}
