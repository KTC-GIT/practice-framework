package com.spring.cjs200810.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.cjs200810.vo.NotifyVo;

public interface NotifyDao {

	public List<NotifyVo> selectList();

	public void insertNoti(@Param("vo") NotifyVo vo);
	
}
