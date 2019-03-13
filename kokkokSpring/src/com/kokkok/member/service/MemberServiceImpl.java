package com.kokkok.member.service;


import java.util.Map;


import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.dto.MemberDto;
import com.kokkok.member.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService{

	
	@Autowired
 	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void myInfo(ModelAndView mav) {
		Map<String, Object> map=mav.getModelMap();
		HttpServletRequest request=(HttpServletRequest) map.get("request");
		mav.setViewName("/member/myMenu/myInfo/view");		
	}

	@Override
	public void myWriteSchedule(ModelAndView mav) {
		Map<String, Object> map=mav.getModelMap();
		HttpServletRequest request=(HttpServletRequest) map.get("request");
		mav.setViewName("/member/myMenu/myWrite/list");		
	}

	@Override
	public void myWishSchedule(ModelAndView mav) {
		Map<String, Object> map=mav.getModelMap();
		HttpServletRequest request=(HttpServletRequest) map.get("request");
		mav.setViewName("/member/myMenu/myWish/myschedulelist");		
	}

	@Override
	public void myWishreview(ModelAndView mav) {
		Map<String, Object> map=mav.getModelMap();
		HttpServletRequest request=(HttpServletRequest) map.get("request");
		mav.setViewName("/member/myMenu/myWish/myreviewlist");		
	}



	@Override
	public MemberDto login(Map<String, String> map) {
		MemberDao memberDao = sqlSessionTemplate.getMapper(MemberDao.class);
		return memberDao.login(map);
	}

	@Override
	public int register(MemberDto memberDto) {
		MemberDao memberDao = sqlSessionTemplate.getMapper(MemberDao.class);
		return memberDao.register(memberDto);
	}

	@Override
	public int idCheck(String id) {
		MemberDao memberDao = sqlSessionTemplate.getMapper(MemberDao.class);
		return memberDao.idCheck(id);
	}

	@Override
	public MemberDto findPw(Map<String, String> map) {
		MemberDao memberDao = sqlSessionTemplate.getMapper(MemberDao.class);
		return memberDao.findPw(map);
	}

	@Override
	public int updatePw(MemberDto memberDto) {
		MemberDao memberDao = sqlSessionTemplate.getMapper(MemberDao.class);
		return memberDao.updatePw(memberDto);
	}

	@Override
	public int memberModify(Map<String, String> map) {
		MemberDao memberDao = sqlSessionTemplate.getMapper(MemberDao.class);
		return memberDao.memberModify(map);
	}

	@Override
	public MemberDto reLogin(Map<String, String> map) {
		MemberDao memberDao = sqlSessionTemplate.getMapper(MemberDao.class);
		return memberDao.reLogin(map);
	}

	@Override
	public int memberdelete(Map<String, String> map) {
		MemberDao memberDao = sqlSessionTemplate.getMapper(MemberDao.class);
		return memberDao.memberdelete(map);
	}



}
