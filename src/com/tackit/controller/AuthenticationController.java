package com.tackit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tackit.domain.Category;
import com.tackit.domain.User;
import com.tackit.facade.TackFacade;
import com.tackit.facade.UserCategoryFacade;
import com.tackit.facade.UserFacade;

@Controller
public class AuthenticationController {

	private UserFacade userFacade;
	private TackFacade tackFacade;
	private UserCategoryFacade userCatFacade;

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
				session.setAttribute("user", userDb);
				session.setAttribute("user_id", userDb.getId());
				session.setAttribute("sessionId", session.getId());
			}
			modelAndView.setViewName("index");
		}
		else{
			modelAndView.setViewName("user_login");
		}
		List<Category> categories = tackFacade.getCategories();
		modelAndView.addObject("categories", categories);
		return modelAndView;
	}
	
	@RequestMapping(value = "/signup.htm", method = RequestMethod.GET)
	public ModelAndView showSignup() {
		return new ModelAndView("user_signup","categories", tackFacade.getCategories());
	}

	@RequestMapping(value = "/signup.htm", method = RequestMethod.POST)
	public ModelAndView signup(@RequestParam("fname") String fname, 
			@RequestParam("lname") String lname, 
			@RequestParam("email") String email,
			@RequestParam("password") String password, 
			@RequestParam("categories") String categories,
			HttpSession session) {
		
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		user.setFirst_name(fname);
		user.setLast_name(lname);
		int user_id = userFacade.createUser(user);
		boolean res = userCatFacade.createUserCategoryMapping(user_id, categories);
		session.setAttribute("user", fname);
		session.setAttribute("user_id", user_id);
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
	
	@RequestMapping(value = "/signupload.htm", method = RequestMethod.GET)
	public ModelAndView showCategoriesSignup() {
		return new ModelAndView("index", "categories", tackFacade.getCategories());
	}
	
	public void setTackFacade(TackFacade tackFacade) {
		this.tackFacade = tackFacade;
	}
	
	public void setUserFacade(UserFacade userFacade) {
		this.userFacade = userFacade;
	}
	
	public void setUserCategoryFacade(UserCategoryFacade userCategoryFacade) {
		this.userCatFacade = userCategoryFacade;
	}
}
