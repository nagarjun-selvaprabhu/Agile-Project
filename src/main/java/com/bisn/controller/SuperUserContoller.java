package com.bisn.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bisn.City_Classified_And_Search.model.User;
import com.bisn.City_Classified_And_Search.service.UserService;

@Controller
public class SuperUserContoller {

	@Autowired
	UserService service;
	@GetMapping("/superuser")
	public String getPage(Model model) {
		ArrayList<User> readAdminRequest = service.readAdminRequest();
		model.addAttribute("list", readAdminRequest);
		return "superuser";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.GET)
	public String update(@RequestParam("id") int id,@RequestParam("role") Boolean role) {
		
		service.updateuser(role, id);
		return "redirect:/superuser";
	}
}
