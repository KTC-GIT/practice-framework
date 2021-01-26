package com.spring.springDb.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.springDb.vo.UserVo;

public interface UserDao {

	public List<UserVo> getUserList();

	public void userInput(@Param("vo") UserVo vo);

	public List<UserVo> getUserSearch(@Param("idx") int idx);

	public void userUpdate(@Param("vo") UserVo vo);

	public void deleteUser(@Param("idx") int idx);

	public UserVo getPw(@Param("id") String id);
	
}
