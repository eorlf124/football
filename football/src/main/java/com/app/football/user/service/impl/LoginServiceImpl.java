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
	public UserVo userSelectUser(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.getUserById(id);
	}

	@Override
	public void uptUserLoginFailcnt(String id) throws Exception {
		// TODO Auto-generated method stub
		dao.uptUserLoginFailcnt(id); 
	}

	@Override 
	public UserVo getUserByloginfail(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.getUserByloginfail(id);
	}

	@Override
	public void uptUserLastLoingdttm(String id) throws Exception {
		// TODO Auto-generated method stub
		dao.uptUserLastLoingdttm(id);
	}

}
