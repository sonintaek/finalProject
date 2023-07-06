package com.kh.finalProject.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.finalProject.member.model.dao.MemberDao;
import com.kh.finalProject.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;

	@Override
	public int insertMember(Member member) {
		return memberDao.insertMember(member);
	}

	@Override
	public Member seletOneMember(String memId) {
		return memberDao.selectOneMember(memId);
	}
	
	
//관리자--------------------
	@Override
	 public List<Member> getMembers() {
	        return memberDao.selectMembers();
	    }
	@Override
	public void deleteMember(String memId) {
		  memberDao.deleteMember(memId);
	}
	@Override
	public int adminMemberUpdate(Member member) {
		return memberDao.adminMemberUpdate(member);
	}
	@Override
	public int changePwd(String memId, String memPwd) {
		return memberDao.changePwd(memId, memPwd);
	}
	//관리자 end--------------------	
	
	
	
	
	}
