package com.craftsman.ssm.action;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.builder.Diffable;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.stereotype.Controller;

import com.craftsman.ssm.bean.JsonBean;
import com.craftsman.ssm.entity.Worker;

@Controller("uploadAction")
public class UploadAction implements ServletResponseAware {
	private HttpServletResponse response;
	private String fileName;
	private String myFileFileName;
	private String myFileContentType;
	private File myFile;
	private Worker worker;
	private JsonBean jsonBean;

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public File getMyFile() {
		return myFile;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String uploadimg() {
		// 先把上传过来的文件存放到e盘temp目录下，以传入的fileName为名字
		jsonBean = new JsonBean();
		OutputStream output = null;
		InputStream input = null;
		try {
			String path = ServletActionContext.getRequest().getRealPath("/upload/images");
			if (myFileContentType.startsWith("image")) {
				fileName = System.currentTimeMillis() + "." + myFileContentType.substring(6);
			} else {
				jsonBean.setCode(0);
				jsonBean.setMessage("图片格式不对");
				return "jsonBean";
			}
			File f = new File(path, fileName);

			output = new FileOutputStream(f);
			// 建立一个1k大小的缓冲区
			byte[] bs = new byte[1024];

			// 将上传过来的文件输出到output中
			input = new FileInputStream(myFile);

			int length = 0;
			// length=input.read(bs)这句话中，length=-1代表了读到文件结尾
			while ((length = input.read(bs)) > 0) {
				output.write(bs, 0, length);
			}

			jsonBean.setCode(1);
			jsonBean.setMessage("upload/images/" + fileName);

		} catch (Exception e) {

		} finally {
			try {
				input.close();
				output.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return "jsonBean";
	}

	public String uploadTxt() {
		// 先把上传过来的文件存放到e盘temp目录下，以传入的fileName为名字
		jsonBean = new JsonBean();
		OutputStream output = null;
		InputStream input = null;
		if (myFileContentType.startsWith("text")) {
			fileName = System.currentTimeMillis() + ".txt";
		} else {
			jsonBean.setCode(0);
			jsonBean.setMessage("文本格式不正确，只支持txt格式文件上传");
			return "jsonBean";
		}
		try {
			String path = ServletActionContext.getRequest().getRealPath("/upload/text");

			File f = new File(path, fileName);

			output = new FileOutputStream(f);
			// 建立一个1k大小的缓冲区
			byte[] bs = new byte[1024];

			// 将上传过来的文件输出到output中
			input = new FileInputStream(myFile);
			int length = 0;
			// length=input.read(bs)这句话中，length=-1代表了读到文件结尾
			while ((length = input.read(bs)) > 0) {
				output.write(bs, 0, length);
			}

			jsonBean.setCode(1);
			jsonBean.setMessage("upload/text/" + fileName);

		} catch (Exception e) {

		} finally {
			try {
				input.close();
				output.close();

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return "jsonBean";
	}

	public Worker getWorker() {
		return worker;
	}

	public void setWorker(Worker worker) {
		this.worker = worker;
	}

	public JsonBean getJsonBean() {
		return jsonBean;
	}

	public void setJsonBean(JsonBean jsonBean) {
		this.jsonBean = jsonBean;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;

	}

	public String getMyFileFileName() {
		return myFileFileName;
	}

	public void setMyFileFileName(String myFileFileName) {
		this.myFileFileName = myFileFileName;
	}

	public String getMyFileContentType() {
		return myFileContentType;
	}

	public void setMyFileContentType(String myFileContentType) {
		this.myFileContentType = myFileContentType;
	}
}
