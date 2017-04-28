package com.app.football.user.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SignUpController {
	
	private static final Logger logger = LoggerFactory.getLogger(SignUpController.class);
	
	/**
	 * 회원가입 페이지 이동
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup(HttpServletRequest request){

		return "signup/signUp";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String signupSub(HttpServletRequest request){
		
		
		
		return "/signup";
	}
	
}
