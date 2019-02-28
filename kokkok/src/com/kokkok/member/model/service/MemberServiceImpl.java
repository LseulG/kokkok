package com.kokkok.member.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kokkok.member.model.dao.MemberDaoImpl;
import com.kokkok.member.model.MemberDto;
import com.kokkok.member.model.dao.MemberDao;

public class MemberServiceImpl implements MemberService{
	
	private MemberDao memberDao;
	
	public MemberServiceImpl(){
		memberDao = new MemberDaoImpl();
	}

	@Override
	public int idCheck(String id) {
		
		return memberDao.idCheck(id);
	}

	@Override
	public int register(MemberDto memberDto) {
		
		return memberDao.register(memberDto);
	}

	@Override
	public MemberDto getMember(String id) {
		return memberDao.getMember(id);
	}

	@Override
	public int modify(MemberDto memberDto) {
		return memberDao.modify(memberDto);
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDto login(String id, String pass) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pass", pass);
		
		return memberDao.login(map);
	}

	@Override
	public List<MemberDto> memberList(String key, String word) {
		Map<String, String> map = new HashMap<>();
		map.put("key", key);
		map.put("word", word);		
		return memberDao.memberList(map);
	}

}
