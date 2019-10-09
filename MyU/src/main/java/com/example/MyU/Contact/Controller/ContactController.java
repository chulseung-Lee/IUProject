package com.example.MyU.Contact.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ContactController {
	
	@GetMapping("/contact")
	public ModelAndView UContact() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Contact");
		return mv;
	}

}
