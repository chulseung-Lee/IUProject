package com.study.vo;

import org.springframework.web.multipart.MultipartFile;

public class FileVO {
	/* MUST FILLING THIS */
	private String projectPath = "D:/gitRepo/IUProject/IUSpring/src/main/webapp/";
	/* MUST FILLING THIS */
	
	private String realPath;
	private String middlePath = "resources\\\\img\\\\";
	private MultipartFile file;
	
	public String getRealPath() {
		return realPath;
	}

	public void setRealPath(String realPath) {
		String tempStr = realPath.replaceAll("\\\\", "\\\\\\\\");
		this.realPath = tempStr;
	}
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	// real path getter
	public String getHomeRealPath() {
		checkInputPath();
		return realPath + middlePath + "home\\\\";
	}

	public String getAboutRealPath() {
		checkInputPath();
		return realPath + middlePath + "about\\\\";
	}

	public String getMusicRealPath() {
		checkInputPath();
		return realPath + middlePath + "music\\\\";
	}

	public String getGalleryRealPath() {
		checkInputPath();
		return realPath + middlePath + "gallery\\\\";
	}

	public String getEpkRealPath() {
		checkInputPath();
		return realPath + middlePath + "epk\\\\";
	}
	
	// project getter
	public String getHomeProjPath() {
		checkNullPath();
		return projectPath + middlePath + "home\\\\";
	}

	public String getAboutProjPath() {
		checkNullPath();
		return projectPath + middlePath + "about\\\\";
	}

	public String getMusicProjPath() {
		checkNullPath();
		return projectPath + middlePath + "music\\\\";
	}

	public String getGalleryProjPath() {
		checkNullPath();
		return projectPath + middlePath + "gallery\\\\";
	}

	public String getEpkProjPath() {
		checkNullPath();
		return projectPath + middlePath + "epk\\\\";
	}
	
	// project path check method
	private void checkNullPath() {
		if(projectPath == null || projectPath.equals("")) {
			System.out.println("project file path is NULL.. \n filling the path in com.study.vo/FileVO");
			throw new NullPointerException();
		}
	}
	
	// real path input missing check method
	private void checkInputPath() {
		if(realPath == null || realPath.equals("")) {
			System.out.println("input your form \'<input type=\"hidden\" name=\"realPath\" value=\"${sessionScope.realPath}\">\'");
			throw new NullPointerException();
		}
	}
}
