package com.tackit.controller;

import javax.servlet.http.HttpSession;

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
	
	@RequestMapping(value = "/tackuser.htm", method = RequestMethod.GET)
	public ModelAndView getTacksForUser(HttpSession session) {
		
		return new ModelAndView("index", "tacks", tackFacade.getTacksForUser((Integer) session.getAttribute("user_id")));
	}
	
	public void setTackFacade(TackFacade tackFacade) {
		this.tackFacade = tackFacade;
	}
	
	@RequestMapping(value = "/tackad.htm", method = RequestMethod.POST)
    public ModelAndView createUserTack(
            @RequestParam(value = "category_id") int category_id, 
            @RequestParam(value = "title") String title,
            @RequestParam(value = "description") String description,
            @RequestParam(value = "link") String link,
            @RequestParam(value = "imageSrc") String imageSrc,
            HttpSession session){
        
		Integer user_id = (Integer) session.getAttribute("user_id");
		tackFacade.createUserTack(user_id,category_id,title,description,link,imageSrc);
        return new ModelAndView("index");
    }

}
