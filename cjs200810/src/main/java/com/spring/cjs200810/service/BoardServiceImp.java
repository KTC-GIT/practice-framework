package com.spring.cjs200810.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.cjs200810.dao.BoardDao;

@Service
public class BoardServiceImp implements BoardService {
	@Autowired
	BoardDao bDao;
}
