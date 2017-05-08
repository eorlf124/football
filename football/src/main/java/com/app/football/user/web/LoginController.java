package com.app.football.user.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.football.home.web.HomeController;
import com.app.football.user.model.UserVo;
import com.app.football.user.service.LoginService;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Resource(name = "loginService")
	private LoginService loginService;
	
	@ModelAttribute("userVo")
	public UserVo userVo(){
		return new UserVo();
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("로그인페이지.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "login/login";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login_proc(@ModelAttribute("userVo") UserVo userVo, Locale locale, Model model, HttpSession session) throws Exception {
		logger.info("로그인 후 메인페이지 접속.", locale);
		session.setAttribute("userVo", loginService.userSelectUser(userVo.getUser_id()));
		loginService.uptUserLastLoingdttm(userVo.getUser_id());
		return "home";
	}
	
	@RequestMapping(value="/idcheck", method=RequestMethod.POST)
	public @ResponseBody UserVo id_check(@RequestParam("id")String id, Model model) throws Exception
	{
		UserVo userVo = loginService.userSelectUser(id);
		return userVo;
	}
	
	@RequestMapping(value="/loginfail", method=RequestMethod.POST)
	public @ResponseBody UserVo login_fail(@RequestParam("id")String id) throws Exception
	{
		loginService.uptUserLoginFailcnt(id);
		UserVo userVo = loginService.getUserByloginfail(id);
		return userVo;	  
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:/";
	}
	
	
}
