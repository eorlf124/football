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
	
	/**
	 * 로그인 실패 횟수 조회
	 * @param userId
	 * @return
	 * @throws Exception
	 */
	@Override
	public UserVo getUserByloginfail(String userId) throws Exception {
		// TODO Auto-generated method stub
		return tem.getMapper(LoginMapper.class).getUserByloginfail(userId);
	}
	
	/**
	 * 로그인 실패 횟수 수정
	 * @param userId
	 * @return
	 * @throws Exception
	 */
	@Override 
	public int uptUserLoginFailcnt(String userId) throws Exception {
		// TODO Auto-generated method stub
		return tem.getMapper(LoginMapper.class).uptUserLoginFailcnt(userId);
	}

	/**
	 * 마지막 로그인 시간 수정
	 * @param userId
	 * @return
	 * @throws Exception
	 */
	@Override
	public int uptUserLastLoingdttm(String userId) throws Exception {
		// TODO Auto-generated method stub
		return tem.getMapper(LoginMapper.class).uptUserLastLoingdttm(userId);
	} 

	
}
