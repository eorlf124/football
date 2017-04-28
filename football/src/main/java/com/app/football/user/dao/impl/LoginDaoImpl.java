package com.app.football.user.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.football.user.dao.LoginDao;
import com.app.football.user.mapper.LoginMapper;
import com.app.football.user.model.UserVo;

@Repository
public class LoginDaoImpl implements LoginDao {
	
	@Autowired
	SqlSessionTemplate tem;
	
	/**
	 * ID로 사용자 조회
	 * @param userId
	 * @return
	 * @throws Exception
	 */
	public UserVo getUserById(String userId) throws Exception{
		return tem.getMapper(LoginMapper.class).getUserByUserId(userId);
	}

}
