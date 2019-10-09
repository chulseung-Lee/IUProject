package com.example.MyU;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MyUController {
	
	@GetMapping("/")
	public ModelAndView UMain() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Main");
		return mv;
	}

}
