package com.app.football.user.service;

import com.app.football.user.model.UserVo;


public interface LoginService {
	
	/**
	 * user정보를 조회한다.
	 * @param vo - 조회할 정보가 담긴 UserVo
	 * @return 조회한 글
	 * @exception Exception
	 */
	UserVo selectUser(UserVo vo) throws Exception;

}
