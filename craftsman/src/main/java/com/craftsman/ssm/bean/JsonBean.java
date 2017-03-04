package com.craftsman.ssm.bean;

import java.io.Serializable;

public class JsonBean implements Serializable {

	private static final long serialVersionUID = 3846794112311055166L;
	private Object obj;
	private int code;
	private String message;

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "JsonBean [obj=" + obj + ", code=" + code + ", message=" + message + "]";
	}

}
