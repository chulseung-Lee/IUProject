package com.study.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.study.common.FileUtilsForVO;
import com.study.dao.AdminMainDAO;
import com.study.dao.MainDAO;
import com.study.vo.HomeVO;

@Service("adminMainService")
public class AdminMainServiceImpl implements AdminMainService{

	@Resource(name="adminMainDAO")
	private AdminMainDAO admainDAO;
	
	@Resource(name="mainDAO")
	private MainDAO mainDAO;
	
	@Resource(name="fileUtilsForVO")
	private FileUtilsForVO fileUtils;
	
	
	
	@Override
	public List<HomeVO> selectMainPhotoList() throws Exception {
		// TODO Auto-generated method stub
		return (List<HomeVO>)admainDAO.selectPhotoList();
	}

	
	// insert photo
	@Override
	public String insertMainPhoto(HomeVO vo) throws Exception {
		// TODO Auto-generated method stub
		vo.setHOME_VIEWNAME(vo.getFile().getOriginalFilename());
		
		// check fileName exist to DB start
		HomeVO checkVO = admainDAO.selectPhotoOne(vo);
		if(checkVO!=null) {
			return "overlap";
		}
		// check fileName exist to DB end
		
		// if insert and check DO
		if(vo.getHOME_TYPE().equals("SELECTED")) {
			HomeVO tempVO = (HomeVO) mainDAO.selectSelectedOne();
			if(tempVO!=null) {
				admainDAO.deselectPhoto(tempVO);
			}			
		}
		HomeVO tempVO = new HomeVO();
		// 물리 저장
		tempVO = fileUtils.parseInsertFileInfo(vo.getFile(), vo.getHomeRealPath(), vo.getHomeProjPath());
		
		// vo 합치기
		vo.setHOME_VIEWNAME(tempVO.getHOME_VIEWNAME());
		vo.setHOME_SRC(tempVO.getHOME_SRC());
		// 디비 저장
		admainDAO.insertPhoto(vo);
		
		return "success";
	}

	@Override
	public String updateMainPhoto(HomeVO vo) throws Exception {
		// TODO Auto-generated method stub
		HomeVO tempVO = (HomeVO) mainDAO.selectSelectedOne();
		if(tempVO!=null) {
			admainDAO.deselectPhoto(tempVO);
		}
		
		admainDAO.updatePhoto(vo);
		
		return "success";
	}

	@Override
	public String deleteMainPhoto(HomeVO vo) throws Exception {
		// TODO Auto-generated method stub
		
		// Storage delete
		fileUtils.deleteFile(vo.getHomeRealPath(), vo.getHomeProjPath(), vo.getHOME_SRC());
		
		// DB delete
		admainDAO.deletePhoto(vo);
		
		return "success";
	}

}
