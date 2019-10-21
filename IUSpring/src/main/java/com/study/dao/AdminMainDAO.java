package com.study.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.study.vo.HomeVO;

@Repository("adminMainDAO")
public class AdminMainDAO extends AbstractDAO{
	
	public HomeVO selectPhotoOne(HomeVO vo) throws Exception{
		return (HomeVO) selectOne("adminMain.selectPhotoOne", vo);
	}

	public void insertPhoto(HomeVO vo) throws Exception{
		insert("adminMain.insertPhoto", vo);
	}
	
	public void updatePhoto(HomeVO vo) throws Exception{
		update("adminMain.updatePhoto", vo);
	}
	
	public void deselectPhoto(HomeVO vo) throws Exception{
		update("adminMain.deselectOne", vo);
	}
	
	@SuppressWarnings("unchecked")
	public List<HomeVO> selectPhotoList() throws Exception{
		return selectList("adminMain.selectPhotoList");
	}
	
	public void deletePhoto(HomeVO vo) throws Exception{
		delete("adminMain.deletePhoto", vo);
	}
}
