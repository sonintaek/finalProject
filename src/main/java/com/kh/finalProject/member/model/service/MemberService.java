package com.kh.finalProject.member.model.service;

import java.util.List;

import org.springframework.ui.Model;

import com.kh.finalProject.member.model.vo.Member;

public interface MemberService {

	int insertMember(Member member);

	Member seletOneMember(String mId);

	 List<Member> getMembers();

	void deleteMember(String memberId);

	
	

	
	



}
