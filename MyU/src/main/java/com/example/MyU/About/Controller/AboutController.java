package com.example.MyU.About.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AboutController {
	
	@GetMapping("/about")
	public ModelAndView UAbout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("About");
		return mv;
	}

}
