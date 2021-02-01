package com.spring.cjs200810.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.cjs200810.dao.BoardDao;
import com.spring.cjs200810.vo.BoardVo;

@Service
public class BoardServiceImp implements BoardService {
	@Autowired
	BoardDao bDao;

	@Override
	public List<BoardVo> selectList() {
		List<BoardVo> list = bDao.selectList();
		
		return list;
	}

	@Override
	public void insertBoard(BoardVo vo) {
		bDao.insertBoard(vo);
		
	}

	@Override
	public BoardVo selectByIdx(int idx) {
		
		return bDao.selectByIdx(idx);
	}

	@Override
	public void updatePlusHits(int hits, int idx) {
		bDao.updatePlusHits(hits, idx);
		
	}

	
}
