package com.spring.cjs200810.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.cjs200810.vo.GuestVo;

public interface GuestDao {

	List<GuestVo> selectList();

	void insertList(@Param("vo") GuestVo vo);

}
