package com.app.football.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.football.user.dao.LoginDao;
import com.app.football.user.dao.SignUpDao;
import com.app.football.user.model.UserVo;
import com.app.football.user.service.LoginService;
import com.app.football.user.service.SignUpService;

@Service("signUpService")
public class SignUpServiceImpl implements SignUpService{
	
	@Autowired
	private LoginDao loginDao;
	
	@Autowired
	private SignUpDao signUpDao;

	
	
	/**
	 * ID 중복 체크
	 */
	@Override
	public boolean idCheck(String userId) throws Exception {
		UserVo user = loginDao.getUserById(userId);
		if(user == null){
			return true;
		}else{
			return false;
		}
	}

	/**
	 * 사용자 등록
	 */
	@Override
	public int insertUser(UserVo userVo) throws Exception {
		return signUpDao.insertUser(userVo);
	}

}
