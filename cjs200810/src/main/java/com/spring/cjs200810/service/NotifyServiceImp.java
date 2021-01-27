package com.spring.cjs200810.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.cjs200810.dao.NotifyDao;
import com.spring.cjs200810.vo.NotifyVo;

@Service
public class NotifyServiceImp implements NotifyService {
	
	@Autowired
	NotifyDao nDao;

	@Override
	public List<NotifyVo> selectList() {
		
		return nDao.selectList();
	}
}
