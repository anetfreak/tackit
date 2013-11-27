package com.tackit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tackit.domain.User;
import com.tackit.facade.UserFacade;

@Controller
public class AuthenticationController {

	private UserFacade userFacade;
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
		user.setEmail(email);
		user.setPassword(password);
		
		User userDb = userFacade.getUser(user.getEmail());
		if(userDb!=null){
			
			if(userDb.getEmail().equals(user.getEmail()) && userDb.getPassword().equals(user.getPassword())){
				
				session.setAttribute("sessionId", session.getId());
			}
			session.setAttribute("user", userDb.getFirst_name());
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
		user.setEmail(email);
		user.setPassword(password);
		user.setFirst_name(fname);
		user.setLast_name(lname);
		userFacade.createUser(user);
		
		session.setAttribute("user", fname);
		session.setAttribute("sessionId", session.getId());

		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/logout.htm", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		
		session.invalidate();
		return new ModelAndView("index");
	}
	
	public void setUserFacade(UserFacade userFacade) {
		this.userFacade = userFacade;
	}
}
