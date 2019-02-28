package com.kokkok.member.model.dao;

import java.util.List;
import java.util.Map;

import com.kokkok.member.model.MemberDto;


public interface MemberDao {
	
	int idCheck(String id);
	
	int register(MemberDto memberDto);
	
	MemberDto getMember(String id);
	int modify(MemberDto memberDto); // 회원정보 수정
	int delete(String id); // 회원탈퇴
	
	
	// MemberDto login(String id,String pass); 
	MemberDto login(Map<String,String> map); //나중에 마이바티스는 인자를 하나밖에 못받아서 이렇게 해줌!
	
	List<MemberDto> memberList(Map<String,String> map);
}
