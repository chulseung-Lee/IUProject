package com.study.vo;

import org.springframework.stereotype.Component;

@Component
public class HomeVO {

	private 
		String 
			HOME_SRC,
			HOME_TYPE;
	private int methodType;
	private Object file;

	public Object getFile() {
		return file;
	}

	public void setFile(Object file) {
		this.file = file;
	}

	public int getMethodType() {
		return methodType;
	}

	public void setMethodType(int methodType) {
		this.methodType = methodType;
	}

	public String getHOME_SRC() {
		return HOME_SRC;
	}

	public void setHOME_SRC(String hOME_SRC) {
		HOME_SRC = hOME_SRC;
	}

	public String getHOME_TYPE() {
		return HOME_TYPE;
	}

	public void setHOME_TYPE(String hOME_TYPE) {
		HOME_TYPE = hOME_TYPE;
	}
	
}
