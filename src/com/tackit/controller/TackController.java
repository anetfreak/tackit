package com.tackit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tackit.facade.TackFacade;

@Controller
public class TackController {

	private TackFacade tackFacade;

	@RequestMapping(value = "/tacks.htm", method = RequestMethod.GET)
	public ModelAndView getTacks() {
		return new ModelAndView("index", "tacks", tackFacade.getTacks());
	}
	
	@RequestMapping(value = "/tacks.htm", method = RequestMethod.GET,params = {"cat_id"})
	public ModelAndView getTacksForCategory(@RequestParam(value = "cat_id") int category_id ) {
		
		return new ModelAndView("index", "tacks", tackFacade.getTacksForCategory(category_id));
	}
	
	@RequestMapping(value = "/tackuser.htm", method = RequestMethod.GET,params = {"user_id"})
	public ModelAndView getTacksForUser(@RequestParam(value = "user_id") int user_id ) {
		
		return new ModelAndView("index", "tacks", tackFacade.getTacksForUser(user_id));
	}
	
	public void setTackFacade(TackFacade tackFacade) {
		this.tackFacade = tackFacade;
	}

}
