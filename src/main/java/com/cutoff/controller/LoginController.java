package com.cutoff.controller;

import com.cutoff.pojo.UserPOJO;
import com.cutoff.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;

	@RequestMapping("/showLogin")
	public String showLogin(){
		return "login/login";
	}
	/**
	 * 用户登录
	 * @param request
	 * @param response
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("/login")
	public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model){
		int result = 0;
		String userName = request.getParameter("userName").trim();
		String password = request.getParameter("password").trim();
		UserPOJO user = new UserPOJO();
		if(userName != null && !userName.equals("")){
			user.setUserName(userName);
		}else
			return "login/login";
		if(password != null && !password.equals("")){
			user.setPassword(password);
		}else
			return "login/login";
		result = loginService.login(user);
		model.addAttribute("resultCode", result);
		if(result == 1){
			session.setAttribute("userInfo", user);
			model.addAttribute("message", "登录成功!");
			return "home/index";
		}
		else{
			model.addAttribute("message", "登录失败!");
			return "login/login";
		}
	}
	
	@RequestMapping("/showSignUp")
	public String showSignUp(){
		return "login/signUp";
	}
	/**
	 * 用户注册
	 * @param request
	 * @param response
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("/signUp")
	public String signUp(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model){
		int result = 0;
		String userName = request.getParameter("userName").trim();
		String password = request.getParameter("password").trim();
		String realName = request.getParameter("realName").trim();
		String email = request.getParameter("email").trim();
		UserPOJO user = new UserPOJO();
		if(userName != null && !userName.equals("")){
			user.setUserName(userName);
		}else
			return "login/signUp";
		if(password != null && !password.equals("")){
			user.setPassword(password);
		}else
			return "login/signUp";
		if(realName != null && !realName.equals("")){
			user.setRealName(realName);
		}else
			return "login/signUp";
		if(email != null && !email.equals("")){
			user.setEmail(email);
		}else
			return "login/signUp";
		result = loginService.signUp(user);
		model.addAttribute("resultCode", result);
		if(result == 1){
			session.setAttribute("userInfo", user);
			model.addAttribute("message", "注册成功!");
			return "home/index";
		}
		else{
			model.addAttribute("message", "注册失败!");
			return "login/signUp";
		}
	}
	
	@RequestMapping("/showResetPassword")
	public String showResetPassword(){
		return "login/resetPassword";
	}
}
