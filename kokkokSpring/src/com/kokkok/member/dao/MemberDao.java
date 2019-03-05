package com.kokkok.member.dao;

import java.util.List;
import java.util.Map;

import com.kokkok.member.dto.MemberDto;

public interface MemberDao {
	public int idCheck(String id);
	
	public int memberInsert(MemberDto memberDto);
	public int login(String id, String pass);
	
	MemberDto getMember(String id);
	int modify(MemberDto memberDto); 
	int delete(String id); 
	
	
	// MemberDto login(String id,String pass); 
	
	List<MemberDto> memberList(Map<String,String> map);
}
