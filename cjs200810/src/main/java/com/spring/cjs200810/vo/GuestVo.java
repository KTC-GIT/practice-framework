package com.spring.cjs200810.vo;

import java.sql.Timestamp;

public class GuestVo {
	private int idx;
	private String name,email,homepage,vdateStr,hostip,content;
	private Timestamp vdate;
	
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getVdateStr() {
		return vdateStr;
	}
	public void setVdateStr(String vdateStr) {
		this.vdateStr = vdateStr;
	}
	public String getHostip() {
		return hostip;
	}
	public void setHostip(String hostip) {
		this.hostip = hostip;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getVdate() {
		return vdate;
	}
	public void setVdate(Timestamp vdate) {
		this.vdate = vdate;
	}
	
	
}
