package com.example.MyU.Gallery.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class GalleryController {
	
	@GetMapping("/gallery")
	public ModelAndView UGallery() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Gallery");
		return mv;
	}

}
