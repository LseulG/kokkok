package com.kokkok.schedule.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.dto.ScheduleReviewDtoList;
import com.kokkok.schedule.service.ScheduleService;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService scheduleService;
	
	
	
	@RequestMapping(value="/schedule/list.kok",method=RequestMethod.GET)
	public String scheduleList() {
		return "schedule/list";
	}
	
	@RequestMapping(value="/schedule/write.kok",method=RequestMethod.GET)
	public String scheduleWrite() {
		return "schedule/write";
	}
	
	@RequestMapping(value="/schedule/write.kok",method=RequestMethod.POST)
	public ModelAndView scheduleWrite(@RequestParam Map<String,Object> map, HttpSession session, 
			ScheduleReviewDtoList list) {
		//MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		//map.put("userid", memberDto.getUserid());
		map.put("userid", "sseul");
		
		// schedule insert
		// +) file upload
		int scheduleCnt = scheduleService.scheduleWrite(map);
		int reviewCnt = 0;
		
		
		// review insert
		for(int i =0; i<list.getList().size() ; i++) {			
			Map<String, Object> reviewMap = new HashMap<>();
			
			reviewMap.put("userid", "sseul"); //id setting!!!!!!!!!!!!!!!!!!!!!!!
			
			reviewMap.put("bcode", list.getList().get(i).getBcode());
			reviewMap.put("subject", list.getList().get(i).getSubject());
			reviewMap.put("content", list.getList().get(i).getContent());
			reviewMap.put("location", list.getList().get(i).getLocation());
			reviewMap.put("lat", list.getList().get(i).getLat());
			reviewMap.put("lng", list.getList().get(i).getLng());
			reviewMap.put("address", list.getList().get(i).getAddress());
			reviewMap.put("simpleaddr", list.getList().get(i).getSimpleaddr());
			reviewMap.put("tripday", list.getList().get(i).getTripday());
			reviewMap.put("step", list.getList().get(i).getStep());
			
			reviewCnt = scheduleService.scheduleReviewWrite(reviewMap);
		}
		
		ModelAndView mav = new ModelAndView();
		if(scheduleCnt!=0 && reviewCnt!=0) {
			// 글번호 가져가기 코딩해야함
			System.out.println("insert 대성공");
			mav.setViewName("schedule/view");//성공
		}else {
			System.out.println("insert 실패");
			mav.setViewName("schedule/view");//실패
		}		
		return mav;
		/* 리뷰 등록하다 실패시 스케줄 등록 rollback 해야함 */
	}
	
	@RequestMapping(value="/schedule/view.kok",method=RequestMethod.GET)
	public ModelAndView scheduleView(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		scheduleService.scheduleView(mav);
		
		return mav;
	}
	

}
