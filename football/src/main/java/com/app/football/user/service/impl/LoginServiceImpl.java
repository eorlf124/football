package com.app.football.user.service.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.app.football.user.dao.LoginDao;
import com.app.football.user.model.UserVo;
import com.app.football.user.service.LoginService;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	public LoginDao dao;
 
	@Override
	public UserVo selectUser(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		UserVo loginVo = dao.getUserById(vo.getUser_id());
		
		return loginVo;
	}

}
