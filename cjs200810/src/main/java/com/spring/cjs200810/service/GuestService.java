package com.spring.cjs200810.service;

import java.util.List;

import com.spring.cjs200810.vo.GuestVo;

public interface GuestService {

	List<GuestVo> selectgList();

	void insertgList(GuestVo vo);

}
