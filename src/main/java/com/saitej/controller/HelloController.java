package com.saitej.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	@RequestMapping("/hello")
	public ModelAndView greet(@RequestParam("name") String name) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("welcome");
		mv.addObject("name", name);

		return mv;
	}
}
