package com.app.football.user.dao;

import com.app.football.user.model.UserVo;

public interface SignUpDao {

	/**
	 * 사용자 등록
	 * @param userVo
	 * @return
	 * @throws Exception
	 */
	public int insertUser(UserVo userVo) throws Exception;

}
