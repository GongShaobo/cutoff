package com.cutoff.controller;

import com.cutoff.pojo.UserPOJO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public String homePage(HttpServletRequest request, HttpSession session, Model model){
		UserPOJO user = (UserPOJO) session.getAttribute("userInfo");
		model.addAttribute("userInfo", user);
		return "home/index";
	}
	
	@RequestMapping("/showUserInfo")
	public String showUserInfo(){
		return "home/showUserInfo";
	}
	
	@RequestMapping("/showLessons")
	public String showLessons(){
		return "home/showLessons";
	}
	
	@RequestMapping("/showCalendar")
	public String showCalendar(){
		return "home/showCalendar";
	}
}
