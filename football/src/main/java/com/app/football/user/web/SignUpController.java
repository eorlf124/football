package com.app.football.user.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.app.football.user.model.UserVo;
import com.app.football.user.service.SignUpService;

@SessionAttributes("userVo")
@Controller
public class SignUpController {
	
	@Autowired
	private SignUpService signUpService;
	
	@ModelAttribute("userVo")
	public UserVo userVo(){
		return new UserVo();
	}
	
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
	
	
	@RequestMapping(value="/idCheck")
	public @ResponseBody String idCheck(HttpServletRequest request, @RequestParam String userId) throws Exception{
		
		boolean idCheck = signUpService.idCheck(userId);
		return String.valueOf(idCheck);
		
	}
	
}
