package com.app.football.user.service;

import com.app.football.user.model.UserVo;


public interface LoginService {
	
	/**
	 * id정보를 조회한다.
	 * @param id - 조회할 정보가 담긴 id
	 * @return 조회한 정보
	 * @exception Exception
	 */
	UserVo userSelectUser(String id) throws Exception;
    
	/**
	 * id정보의 로그인실패 횟수를 수정한다.
	 * @param id - 수정할 정보가 담긴 id
	 * @return 수정할 정보
	 * @exception Exception
	 */
	void uptUserLoginFailcnt(String id) throws Exception;
	
	/**
	 * id에대한 로그인 실패 횟수 정보를 조회한다.
	 * @param id - 조회할 정보가 담긴 id
	 * @return 조회한 정보
	 * @exception Exception
	 */
	UserVo getUserByloginfail(String id) throws Exception;
	
	/**
	 * id에대한 마지막 로그인 시간 수정한다.
	 * @param id - 수정할 정보가 담긴 id
	 * @return 수정할 정보
	 * @exception Exception
	 */
	void uptUserLastLoingdttm(String id) throws Exception;
}
