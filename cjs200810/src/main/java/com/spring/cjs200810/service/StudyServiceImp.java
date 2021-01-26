package com.spring.cjs200810.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.spring.cjs200810.dao.StudyDao;

public class StudyServiceImp implements StudyService {
	@Autowired
	StudyDao sDao;

	@Override
	public void getCalendar() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		
		
	}
	
	
}
