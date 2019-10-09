package com.example.MyU.Music.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MusicController {
	
	@GetMapping("/music")
	public ModelAndView UMusic() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Music");
		return mv;
	}

}
