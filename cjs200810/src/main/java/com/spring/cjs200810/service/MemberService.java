package com.spring.cjs200810.service;

import com.spring.cjs200810.vo.MemberVo;


public interface MemberService {

	public void insertMember(MemberVo vo);

	public int countById(String id);

	public int countByNick(String nick);

	public MemberVo selectIdPw(String id);

	public MemberVo selectByEmail(String email);

	public MemberVo selectByIdEmail(String id, String email);

	public void updateTempPw(String id, String encode);

	public MemberVo selectById(String id);

	public void updateMember(MemberVo vo, String id);
}
