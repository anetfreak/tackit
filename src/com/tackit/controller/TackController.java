package com.tackit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tackit.facade.TackFacade;

@Controller
public class TackController {

	private TackFacade tackFacade;

	@RequestMapping(value = "/tacks.htm", method = RequestMethod.GET)
	public ModelAndView getTacks() {
		
		return new ModelAndView("index", "tacks", tackFacade.getTacks());
	}
	
	public void setTackFacade(TackFacade tackFacade) {
		this.tackFacade = tackFacade;
	}

}
