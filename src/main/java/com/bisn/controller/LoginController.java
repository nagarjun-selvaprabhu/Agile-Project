package com.bisn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bisn.City_Classified_And_Search.model.Login;
import com.bisn.City_Classified_And_Search.model.User;
import com.bisn.City_Classified_And_Search.service.UserService;

@Controller
public class LoginController {

	@Autowired
	UserService service;
	@RequestMapping(value="/login" ,method=RequestMethod.GET)
	public String showLoginPage(@ModelAttribute Login login) {
		return "login";
	}
	
	@RequestMapping(value="/login" ,method=RequestMethod.POST)
	public String show(@ModelAttribute User user,@ModelAttribute Login login) {
		service.updateRegister(user,login);
		System.out.println("hi");
		return "login";
	}
	

}
