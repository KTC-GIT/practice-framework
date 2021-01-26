package com.spring.cjs200810.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.cjs200810.dao.GuestDao;
import com.spring.cjs200810.vo.GuestVo;

@Service
public class GuestServiceImp implements GuestService {
	@Autowired
	GuestDao gDao;

	@Override
	public List<GuestVo> selectgList() {
		List<GuestVo> list = gDao.selectList();
		return list;
	}

	@Override
	public void insertgList(GuestVo vo) {
		gDao.insertList(vo);
		
	}
	
	
}
