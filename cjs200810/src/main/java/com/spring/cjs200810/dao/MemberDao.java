package com.spring.cjs200810.dao;

import org.apache.ibatis.annotations.Param;

import com.spring.cjs200810.vo.MemberVo;

public interface MemberDao {

	public void insertMember(@Param("vo") MemberVo vo);

	public int countById(@Param("id") String id);

	public int countByNick(@Param("nick") String nick);

	public MemberVo selectIdPw(@Param("id") String id);

	public MemberVo selectByEmail(@Param("email") String email);

	public MemberVo selectByIdEmail(@Param("id") String id, @Param("email") String email);

	public void updateTempPw(@Param("id") String id, @Param("encPw") String encode);

	public MemberVo selectById(@Param("id") String id);

	public void updateMember(@Param("vo") MemberVo vo, @Param("id") String id);
	
	
}
