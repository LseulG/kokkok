package com.kokkok.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kokkok.dto.MemberDto;



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
	public MemberDto login(String id, String pass) {
		Map<String, Object> hmap = new HashMap<>();
		hmap.put("userid", id);
		hmap.put("userpass", pass);
		return sqlSessionTemplate.selectOne("login",hmap);
	}

	@Override
	public List<MemberDto> memberList(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
