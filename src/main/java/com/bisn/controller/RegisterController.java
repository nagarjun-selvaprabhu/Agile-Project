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
public class RegisterController {

	@Autowired
	UserService service;
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String showPage() {
		return "registration";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String show(@ModelAttribute User user) {
		
		//service.updateRegister(user,login);
		return "registration";
	}
}
