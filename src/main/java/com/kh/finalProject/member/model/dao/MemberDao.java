package com.kh.finalProject.member.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kh.finalProject.member.model.vo.Member;

@Mapper
public interface MemberDao {


	int insertMember(Member member);

	Member selectOneMember(String memId);

	int changePwd(String memId, String memPwd);
//관리자부분----------------
	List<Member> selectMembers();
	
	void deleteMember(String memId);
	
	int adminMemberUpdate(Member member);
	
//관리자 end----------------	
	
	
	
}
