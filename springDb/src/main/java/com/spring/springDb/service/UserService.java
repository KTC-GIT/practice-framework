package com.spring.springDb.service;

import java.util.List;

import com.spring.springDb.vo.UserVo;

public interface UserService {

	public List<UserVo> getUserList();

	public void userInput(UserVo vo);

	public List<UserVo> getUserSearch(int idx);

	public void userUpdate(UserVo vo);

	public void deleteUser(int idx);

	public UserVo getPw(String id);

}
