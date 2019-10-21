package com.study.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.study.vo.HomeVO;

@Repository("mainDAO")
public class MainDAO extends AbstractDAO{

	public HomeVO selectSelectedOne() throws Exception{
		return (HomeVO) selectOne("main.selectSelectedOne");
	}
}
