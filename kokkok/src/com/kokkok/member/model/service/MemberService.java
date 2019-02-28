package com.kokkok.member.model.service;

import java.util.List;

import com.kokkok.member.model.MemberDto;


public interface MemberService {
	int idCheck(String id);
	
	int register(MemberDto memberDto);
	
	MemberDto getMember(String id);
	int modify(MemberDto memberDto); // 회원정보 수정
	int delete(String id); // 회원탈퇴
	
	MemberDto login(String id,String pass);
	
	List<MemberDto> memberList(String key, String word);
}
