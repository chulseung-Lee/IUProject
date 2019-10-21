package com.study.vo;

import org.springframework.stereotype.Component;

@Component
public class HomeVO extends FileVO{

	private 
		String 
			HOME_SRC,
			HOME_TYPE,
			HOME_VIEWNAME;
	private int methodType;

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

	public String getHOME_VIEWNAME() {
		return HOME_VIEWNAME;
	}

	public void setHOME_VIEWNAME(String hOME_VIEWNAME) {
		HOME_VIEWNAME = hOME_VIEWNAME;
	}
}
