package com.spring.cjs200810.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.cjs200810.dao.MemberDao;
import com.spring.cjs200810.vo.MemberVo;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	MemberDao mDao;
	
	@Override
	public void insertMember(MemberVo vo) {
		mDao.insertMember(vo);
	}

	@Override
	public int countById(String id) {
		
		return mDao.countById(id);
	}

	@Override
	public int countByNick(String nick) {
		
		return mDao.countByNick(nick);
	}

	@Override
	public MemberVo selectIdPw(String id) {
		MemberVo vo = mDao.selectIdPw(id);
		return vo;
	}

	@Override
	public MemberVo selectByEmail(String email) {
		
		return mDao.selectByEmail(email);
	}

	@Override
	public MemberVo selectByIdEmail(String id, String email) {
		
		return mDao.selectByIdEmail(id,email);
	}

	@Override
	public void updateTempPw(String id, String encode) {
		mDao.updateTempPw(id,encode);
		
	}

	@Override
	public MemberVo selectById(String id) {
		
		return mDao.selectById(id);
	}

	@Override
	public void updateMember(MemberVo vo,String id) {
		mDao.updateMember(vo,id);
	}

}
