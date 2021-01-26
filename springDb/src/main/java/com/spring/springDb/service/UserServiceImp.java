package com.spring.springDb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.springDb.dao.UserDao;
import com.spring.springDb.vo.UserVo;

@Service
public class UserServiceImp implements UserService {
	@Autowired
	UserDao userDao;

	@Override
	public List<UserVo> getUserList() {
		List<UserVo> list = userDao.getUserList();
		
		return list;
	}

	@Override
	public void userInput(UserVo vo) {
		userDao.userInput(vo);
	}

	@Override
	public List<UserVo> getUserSearch(int idx) {
		List<UserVo> list = userDao.getUserSearch(idx);
		
		return list;
	}

	@Override
	public void userUpdate(UserVo vo) {
		userDao.userUpdate(vo);
		
	}

	@Override
	public void deleteUser(int idx) {
		userDao.deleteUser(idx);
		
	}

	@Override
	public UserVo getPw(String id) {
		UserVo vo = userDao.getPw(id);
		return vo;
	}
	
	
}
