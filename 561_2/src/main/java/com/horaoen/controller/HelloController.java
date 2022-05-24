package com.horaoen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;

@Controller
@RequestMapping("/hello")
public class HelloController{

   @RequestMapping(method = RequestMethod.GET)
   public ModelAndView printHello(ModelMap model) {
	   String me = "方浩冉";
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("message",me);
		return modelAndView;
   }

}