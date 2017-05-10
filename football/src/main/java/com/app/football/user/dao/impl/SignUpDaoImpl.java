package com.app.football.user.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.football.user.dao.SignUpDao;
import com.app.football.user.mapper.SignUpMapper;
import com.app.football.user.model.UserVo;

@Repository("signUpDao")
public class SignUpDaoImpl implements SignUpDao{
	
	@Autowired
	SqlSessionTemplate tem;

	@Override
	public int insertUser(UserVo userVo) throws Exception {
		return tem.getMapper(SignUpMapper.class).insertUser(userVo);
	}

}
