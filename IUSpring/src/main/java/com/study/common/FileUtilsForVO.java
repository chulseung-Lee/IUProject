package com.study.common;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.study.vo.HomeVO;

@Component("fileUtilsForVO")
public class FileUtilsForVO {
	
	public HomeVO parseInsertFileInfo(MultipartFile multipartFile, String realPath, String projPath) throws Exception{
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		HomeVO vo = new HomeVO();
		
		File file = new File(realPath);
		if(file.exists() == false) {
			file.mkdirs();
		}
		
		originalFileName = multipartFile.getOriginalFilename();
		
		originalFileExtension = originalFileName.substring(multipartFile.getOriginalFilename().lastIndexOf("."));
		storedFileName = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;
		
		// file upload to real path
		file = new File(realPath + storedFileName);
		multipartFile.transferTo(file);
		
		// file upload to project path
		file = new File(projPath + storedFileName);
		multipartFile.transferTo(file);
		
		// original file name & stored file name return 
		// 보여줄 사진 이름
		vo.setHOME_VIEWNAME(originalFileName);
		// 실제 저장 이름
		vo.setHOME_SRC(storedFileName);
		return vo;
	}
	
	public void deleteFile(String realPath, String projPath, String storedFileName) throws Exception{
		File file = new File(realPath + storedFileName);
		if(file.exists()) {
			if(file.delete()) {
				System.out.println("file delete success..1");
			}else {
				System.out.println("file delete failed..1");
			}
		}else {
			System.out.println("file do not exist..1");
		}
		file = new File(projPath + storedFileName);
		if(file.exists()) {
			if(file.delete()) {
				System.out.println("file delete success..2");
			}else {
				System.out.println("file delete failed..2");
			}
		}else {
			System.out.println("file do not exist..2");
		}
	}
}
