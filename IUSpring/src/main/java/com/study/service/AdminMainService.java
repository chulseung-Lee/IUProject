package com.study.service;

import java.util.List;

import com.study.vo.HomeVO;

public interface AdminMainService {

	List<HomeVO> selectMainPhotoList() throws Exception;
	
	String insertMainPhoto(HomeVO vo) throws Exception;
	
	String updateMainPhoto(HomeVO vo) throws Exception;
	
	String deleteMainPhoto(HomeVO vo) throws Exception;
}
