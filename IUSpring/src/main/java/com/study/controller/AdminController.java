package com.study.controller;

import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;


import com.study.vo.HomeVO;

@Controller
public class AdminController {

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	ModelAndView main() {
		ModelAndView mav = new ModelAndView("adminMain");
		
		return mav;
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	String changeMainPhoto(HomeVO vo,Model model) throws Exception{
		
		System.out.println("test1 : " + vo.getHOME_SRC());
		System.out.println("test2 : " + vo.getHOME_TYPE());
		
		// file test
		/*
		MultipartHttpServletRequest multipartServletRequest = (MultipartHttpServletRequest) request;
		Iterator<String> iterator = multipartServletRequest.getFileNames();
		MultipartFile multipartFile = multipartServletRequest.getFile(iterator.next());
		System.out.println("file : " + multipartFile.getOriginalFilename());
		*/
		MultipartFile multipartFile = (MultipartFile) vo.getFile();
		System.out.println("file : " + multipartFile.getOriginalFilename());
		model.addAttribute("vo", vo);
		return "adminMain";
	}
	
}
