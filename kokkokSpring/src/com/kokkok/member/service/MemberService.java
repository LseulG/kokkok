package com.kokkok.member.service;

import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

import com.kokkok.dto.MemberDto;

public interface MemberService {
	int register(MemberDto memberDto);
	int idCheck(String id);
	MemberDto login(Map<String, String> map);



	public void myInfo(ModelAndView mav);
	public void myWriteSchedule(ModelAndView mav);
	public void myWishSchedule(ModelAndView mav);
	public void myWishreview(ModelAndView mav);
}
