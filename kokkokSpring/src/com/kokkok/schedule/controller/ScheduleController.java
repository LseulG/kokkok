package com.kokkok.schedule.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.schedule.dto.ScheduleDto;
import com.kokkok.schedule.service.ScheduleService;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping(value="/schedule/list.kok",method=RequestMethod.GET)
	public ModelAndView scheduleList(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		scheduleService.scheduleList(mav);
		
		return mav;
	}
	
	@RequestMapping(value="/schedule/write.kok",method=RequestMethod.GET)
	public ModelAndView scheduleWrite(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		scheduleService.scheduleWrite(mav);
		
		return mav;
	}
	
	@RequestMapping(value="/schedule/view.kok",method=RequestMethod.GET)
	public ModelAndView scheduleView(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		scheduleService.scheduleView(mav);
		
		return mav;
	}
	
	@RequestMapping(value="/schedule/writeOk.kok",method=RequestMethod.GET)
	public ModelAndView scheduleWriteOk(HttpServletRequest request, HttpServletResponse response,ScheduleDto scheduleDto) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("ScheduleDto",scheduleDto);
		scheduleService.scheduleWriteOk(mav);
		
		return mav;
	}
}
