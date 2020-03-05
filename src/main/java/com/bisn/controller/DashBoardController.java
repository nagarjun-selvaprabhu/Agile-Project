package com.bisn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bisn.City_Classified_And_Search.model.Login;
import com.bisn.City_Classified_And_Search.model.User;
import com.bisn.City_Classified_And_Search.service.UserService;

@SessionAttributes("id")
@Controller
public class DashBoardController {

	@Autowired
	UserService service;
	@RequestMapping(value="/dashboard" ,method=RequestMethod.GET)
	public String showLoginPage(@ModelAttribute Login login) {
		return "addAdDash";
	}
	@RequestMapping(value="/dashboard" ,method=RequestMethod.POST)
	public String showLogin(@ModelAttribute Login login,Model model) {
		if(login.getUserName().equals("1")&&login.getPassWord().equals("root")) {
			return "redirect:/superuser";
		}
		service.checkLogin(login);
		model.addAttribute("login",login);
		model.addAttribute("id", login.getUserName());
		if(login.getType().equals("adminreq")) {
			return "redirect:/login";
		}
		return "addAdDash";
	}
	
	@GetMapping("/updateUserDash")
	public String showUpdateUserDashPage(@ModelAttribute User user,Model model) {
		int id = Integer.parseInt((String) model.getAttribute("id"));
		System.out.println(id);
		User userObject = service.getUserObject(id);
		System.out.println(userObject.toString());
		model.addAttribute("userobj", userObject);
		return "updateUserDash";
	}
	
	@GetMapping("/viewAdDash")
	public String showViewAdDashPage() {
		return "viewAdDash";
	}
		
}
