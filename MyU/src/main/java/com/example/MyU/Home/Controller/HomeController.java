package com.example.MyU.Home.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HomeController {
	
	@GetMapping("/home")
	public ModelAndView UHome() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("test", "IULover");
		mv.setViewName("Home");
		return mv;
	}

}
