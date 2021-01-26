package com.spring.springTest.vo;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class JoinVo {
	@NotEmpty(message="아이디나 비밀번호가 공백으로 입력됨")		//공백확인 어노테이션
	@Size(min=4,max=20,message="아이디나 비밀번호가 허용치(4~20)를 벗어났음")	//글자개수 확인 어노테이션
	private String id,pw;

	@Range(min=20,max=60, message="나이가 허용치(20~60)를 벗어남")		//숫자범위 확인 어노테이션
	private int age;
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
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
	
	
}
