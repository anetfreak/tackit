package com.tackit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tackit.domain.User;
import com.tackit.facade.TackFacade;
import com.tackit.facade.UserFacade;

@Controller
public class AuthenticationController {

	private UserFacade userFacade;
	private TackFacade tackFacade;

	private static final String VIEW_NAME = "commonJsonView";

	@RequestMapping(value = "/login.htm", method = RequestMethod.GET)
	public ModelAndView showLogin() {
		return new ModelAndView("user_login");
	}

	@RequestMapping(value = "/login.htm", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("email") String email,
			@RequestParam("password") String password,
			HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		User user = new User();
		user.setUserName(email);
		user.setPassword(password);
		
		User userDb = userFacade.getUser(user.getUserName());
		if(userDb!=null){
			if(userDb.getUserName().equals(user.getUserName()) && userDb.getPassword().equals(user.getPassword())){
				session.setAttribute("user", userDb);
				session.setAttribute("sessionId", session.getId());
			}
			modelAndView.setViewName("index");
		}
		else{
			modelAndView.setViewName("user_login");
		}
		return modelAndView;
	}
	
	@RequestMapping(value = "/signup.htm", method = RequestMethod.GET)
	public ModelAndView showSignup() {
		return new ModelAndView("user_signup");
	}

	@RequestMapping(value = "/signup.htm", method = RequestMethod.POST)
	public ModelAndView signup(@RequestParam("fname") String fname, 
			@RequestParam("lname") String lname, 
			@RequestParam("email") String email,
			@RequestParam("password") String password, 
			HttpSession session) {
		
		User user = new User();
		user.setUserName(email);
		user.setPassword(password);
		userFacade.createUser(user);
		
		session.setAttribute("user", userFacade.getUser(user.getUserName()));
		session.setAttribute("sessionId", session.getId());

		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/logout.htm", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		
		session.invalidate();
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/home.htm", method = RequestMethod.GET)
	public ModelAndView showHome() {
		return new ModelAndView("index", "categories", tackFacade.getCategories());
	}
	
	public void setTackFacade(TackFacade tackFacade) {
		this.tackFacade = tackFacade;
	}
	
	public void setUserFacade(UserFacade userFacade) {
		this.userFacade = userFacade;
	}
}
