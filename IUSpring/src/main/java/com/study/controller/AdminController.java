package com.study.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.study.service.AdminMainService;
import com.study.vo.HomeVO;

@Controller
public class AdminController {
	
	@Resource(name = "adminMainService")
	private AdminMainService adminMainService;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	ModelAndView main(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView("adminMain");
		
		List<HomeVO> list = adminMainService.selectMainPhotoList();
		mav.addObject("photoList", list);
		return mav;
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	String changeMainPhoto(HomeVO vo, Model model) throws Exception{
		String status = "";
		// 1 << insert photo
		if(vo.getMethodType() == 1) {
			status = adminMainService.insertMainPhoto(vo);
		}else if(vo.getMethodType() == 2) {
			status = adminMainService.updateMainPhoto(vo);
		}else if(vo.getMethodType() == 3) {
			status = adminMainService.deleteMainPhoto(vo);
		}
		
		
		model.addAttribute("status", status);
		return "redirect:/admin";
	}
}
