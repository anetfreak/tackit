package com.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tackit.facade.TackFacade;

@Controller
public class HomeFeedController {
	
	
	TackFacade tackFacade;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView searchContact() {
        
         
        return new ModelAndView("index", "tacks", tackFacade.getTacks());
        
        
    }

}
