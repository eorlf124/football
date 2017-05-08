package com.app.football.user.dao;

import com.app.football.user.model.UserVo;

public interface LoginDao {

	public UserVo getUserById(String userId) throws Exception;
	
	public int uptUserLoginFailcnt(String userId) throws Exception;
	
	public UserVo getUserByloginfail(String userId) throws Exception;
	
	public int uptUserLastLoingdttm(String userId) throws Exception;
}

