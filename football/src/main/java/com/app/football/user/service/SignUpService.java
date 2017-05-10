package com.app.football.user.service;

import com.app.football.user.model.UserVo;

public interface SignUpService {
	
	/**
	 * ID 중복 체크
	 * @param userId
	 * @return
	 * @throws Exception
	 */
	public boolean idCheck(String userId) throws Exception;
	
	/**
	 * 사용자 등록
	 * @param userVo
	 * @return
	 * @throws Exception
	 */
	public int insertUser(UserVo userVo) throws Exception;

}
