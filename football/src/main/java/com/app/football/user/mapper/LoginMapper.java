package com.app.football.user.mapper;

import com.app.football.user.model.UserVo;

public interface LoginMapper {

	UserVo getUserByUserId(String userId);

}
