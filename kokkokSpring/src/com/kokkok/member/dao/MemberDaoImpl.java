package com.kokkok.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kokkok.member.dto.MemberDto;

@Component
public class MemberDaoImpl implements MemberDao {
	@Autowired
 	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int idCheck(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int memberInsert(MemberDto memberDto) {
		return sqlSessionTemplate.insert("memberInsert", memberDto);
	}

	@Override
	public MemberDto getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int modify(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int login(String id, String pass) {

		return 0;
	}

	@Override
	public List<MemberDto> memberList(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
