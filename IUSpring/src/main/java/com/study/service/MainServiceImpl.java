package com.study.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.study.dao.MainDAO;
import com.study.vo.HomeVO;

@Service("mainService")
public class MainServiceImpl implements MainService{

	@Resource(name="mainDAO")
	MainDAO mainDAO;
	
	@Override
	public HomeVO getMainSrc() throws Exception {
		// TODO Auto-generated method stub
		return mainDAO.selectSelectedOne();
	}

}
