package com.kokkok.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.module.SimpleAbstractTypeResolver;
import com.kokkok.comm.LogCheck;
import com.kokkok.dto.MemberDto;
import com.kokkok.member.service.MemberService;


@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping(value="/member/register.kok",method=RequestMethod.GET)
	public String register() {
		return "member/join/register";
	}
	
	@RequestMapping(value="/member/register.kok",method=RequestMethod.POST)
	public ModelAndView register(MemberDto memberDto) {
		int cnt = memberService.register(memberDto);
		String path = "member/join/registerfail";
		ModelAndView mav = new ModelAndView();
		if(cnt != 0) {
			mav.addObject("memberInfo", memberDto);
			LogCheck.logger.info(LogCheck.logMsg + memberDto.toString());
			path = "member/join/registerok";
		}
		mav.setViewName(path);
		return mav;
	}
	
	@RequestMapping(value="/member/idcheck.kok",method=RequestMethod.GET)
	public String idcheck() {
		return "member/join/idcheck";
	}
	
	@RequestMapping(value="/member/idsearch.kok",method=RequestMethod.GET)
	public ModelAndView idcheck(@RequestParam("checkid") String id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int cnt = memberService.idCheck(id);
		request.setAttribute("checkid", id);
		request.setAttribute("idCnt", cnt);
		mav.addObject("checkid", id);
		mav.addObject("idcnt", cnt);
		mav.setViewName("member/join/idcheck");
		return mav;
	}
	
	@RequestMapping(value="/member/myInfo.kok",method=RequestMethod.GET)
	public ModelAndView myInfo(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		memberService.myInfo(mav);
		return mav;
	}
	
	@RequestMapping(value="/member/modify.kok",method=RequestMethod.GET)
	public String modify() {
		return "member/myMenu/myInfo/modify";
	}
	
	@RequestMapping(value="/member/modify.kok",method=RequestMethod.POST)
	public ModelAndView modify(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();

		return mav;
	}
	
	@RequestMapping(value="/member/delete.kok",method=RequestMethod.GET)
	public String delete() {
		return "member/myMenu/myInfo/delete";
	}
	
	@RequestMapping(value="/member/delete.kok",method=RequestMethod.POST)
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();

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
	
	@RequestMapping(value="/login.kok",method=RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String, String> map,HttpSession session, HttpServletRequest request) throws IOException {
		ModelAndView mav = new ModelAndView();
		String path = request.getHeader("referer");
		String projectName = request.getContextPath(); 
		LogCheck.logger.info(LogCheck.logMsg +"이전 페이지경로:"+ path);
		LogCheck.logger.info(LogCheck.logMsg +"프로젝트 이름:"+ projectName);
		LogCheck.logger.info(LogCheck.logMsg +"프로젝트 길이:"+projectName.length());
		MemberDto memberDto = memberService.login(map);
		if(memberDto != null) {
			LogCheck.logger.info(LogCheck.logMsg + memberDto.toString());
			session.setAttribute("userInfo", memberDto);
			path = path.substring(path.lastIndexOf(projectName) + projectName.length()+1, path.length());
			LogCheck.logger.info(LogCheck.logMsg +"이동할페이지 주소:"+ path);
			
			if("index.jsp".equals(path) || "member/register.kok".equals(path)) {
				mav.setViewName("redirect:index.jsp");
				return mav;
			}
		} else {
			mav.setViewName("member/login/loginfail");
			return mav;
		}
		
		mav.setViewName("redirect:"+path);
		return mav;
	}
	
	
	@RequestMapping(value="/logout.kok",method=RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest request) {
		session.invalidate();
		return "redirect:index.jsp";
	}




	

}
