package com.spring.cjs200810.vo;

import java.sql.Timestamp;

public class MemberVo {
	
	private int idx;
	private String id;
	private String pw;
	private String nick;
	private String birth;
	private String email;
	private String tel;
	private String address;
	private Timestamp joindate;
	private String joindateStr;
	private String latestLogin;
	private int level;
	
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Timestamp getJoindate() {
		return joindate;
	}
	public void setJoindate(Timestamp joindate) {
		this.joindate = joindate;
	}
	
	public String getJoindateStr() {
		return joindateStr;
	}
	public void setJoindateStr(String joindateStr) {
		this.joindateStr = joindateStr;
	}
	public String getLatestLogin() {
		return latestLogin;
	}
	public void setLatestLogin(String latestLogin) {
		this.latestLogin = latestLogin;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	
	
}
