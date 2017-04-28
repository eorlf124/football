package com.app.football.user.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class UserVo implements Serializable{

	private static final long serialVersionUID = 6794985593025051901L;
	
	private String user_id;  //사용자 아이디
	
	private String pass_word; //사용자 패스워드
	
	private String e_mail; //사용자 이메일
	
	private int login_fail_cnt; //사용자 로그인 실패 횟수
	
	private Timestamp last_login_dt; //사용자 마지막 로그인 시간
	
	private Timestamp sign_up_dt; //사용자 회원가입 시간

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPass_word() {
		return pass_word;
	}

	public void setPass_word(String pass_word) {
		this.pass_word = pass_word;
	}

	public String getE_mail() {
		return e_mail;
	}

	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}

	public int getLogin_fail_cnt() {
		return login_fail_cnt;
	}

	public void setLogin_fail_cnt(int login_fail_cnt) {
		this.login_fail_cnt = login_fail_cnt;
	}

	public Timestamp getLAST_LOGIN_DT() {
		return last_login_dt;
	}

	public void setLAST_LOGIN_DT(Timestamp lAST_LOGIN_DT) {
		last_login_dt = lAST_LOGIN_DT;
	}

	public Timestamp getSIGN_UP_DT() {
		return sign_up_dt;
	}

	public void setSIGN_UP_DT(Timestamp sIGN_UP_DT) {
		sign_up_dt = sIGN_UP_DT;
	}
	
}
