package com.example.MyU.Info.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class InfoController {
	
	@GetMapping("/info")
	public ModelAndView UInfo() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Info");
		return mv;
	}

}
