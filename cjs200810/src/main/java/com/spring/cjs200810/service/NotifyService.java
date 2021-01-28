package com.spring.cjs200810.service;

import java.util.List;

import com.spring.cjs200810.vo.NotifyVo;

public interface NotifyService {

	public List<NotifyVo> selectList();

	public void insertNoti(NotifyVo vo);
	
}
