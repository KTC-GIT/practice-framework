package com.spring.cjs200810.service;

import java.util.List;

import com.spring.cjs200810.vo.BoardVo;

public interface BoardService {

	public List<BoardVo> selectList();

	public void insertBoard(BoardVo vo);

	public BoardVo selectByIdx(int idx);

	public void updatePlusHits(int hits,int idx);

	

}
