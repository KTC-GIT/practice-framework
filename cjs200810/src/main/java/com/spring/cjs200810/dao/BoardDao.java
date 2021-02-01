package com.spring.cjs200810.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.cjs200810.vo.BoardVo;

public interface BoardDao {

	public List<BoardVo> selectList();

	public void insertBoard(@Param("vo") BoardVo vo);

	public BoardVo selectByIdx(@Param("idx") int idx);

	public void updatePlusHits(@Param("hits") int hits, @Param("idx") int idx);
	
}
