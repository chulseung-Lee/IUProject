package com.study.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.study.service.MainService;

@Controller
public class MainController {
	
	@Resource(name="mainService")
	MainService mainService;
	
	@RequestMapping(value = "/")
	public String nonURL() {
		return "home";
	}
	
	@RequestMapping(value = "/index")
	public ModelAndView main(ModelAndView mav) throws Exception {
		mav = new ModelAndView("index");

		mav.addObject("vo",mainService.getMainSrc());
		return mav;
	}
}
