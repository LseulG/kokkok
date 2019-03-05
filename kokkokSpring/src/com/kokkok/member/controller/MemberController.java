package com.kokkok.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.member.dto.MemberDto;
import com.kokkok.member.service.MemberService;


@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/member/mvRegister.kok",method=RequestMethod.GET)
	public ModelAndView mvRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		memberService.mvRegister(mav);
		return mav;
	}
	
	@RequestMapping(value="/member/registerOk.kok",method=RequestMethod.POST)
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response, MemberDto memberDto) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberDto", memberDto);
		memberService.registerOk(mav);
		return mav;
	}
	
	@RequestMapping(value="/member/IdCheck.kok",method=RequestMethod.GET)
	public ModelAndView idCheck(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		memberService.idCheck(mav);
		return mav;
	}
	
	@RequestMapping(value="/member/myInfo.kok",method=RequestMethod.GET)
	public ModelAndView myInfo(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		memberService.myInfo(mav);
		return mav;
	}
	
	@RequestMapping(value="/member/mylist.kok",method=RequestMethod.GET)
	public ModelAndView mylist(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		memberService.myWriteSchedule(mav);
		return mav;
	}
	
	@RequestMapping(value="/member/mywishschedule.kok",method=RequestMethod.GET)
	public ModelAndView myschedulewish(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		memberService.myWishSchedule(mav);
		return mav;
	}
	
	@RequestMapping(value="/member/mywishreview.kok",method=RequestMethod.GET)
	public ModelAndView myreviewwish(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		memberService.myWishreview(mav);
		return mav;
	}


}
