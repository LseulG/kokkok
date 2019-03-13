package com.kokkok.schedule.service;

import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

public interface ScheduleService {
	public void scheduleList(ModelAndView mav);
	
	public int scheduleWrite(Map<String, Object> map);
	public int scheduleReviewWrite(Map<String, Object> map);
	
	public void scheduleView(ModelAndView mav);
}