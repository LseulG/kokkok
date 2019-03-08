package com.kokkok.schedule.service;

import org.springframework.web.servlet.ModelAndView;

public interface ScheduleService {
	public void scheduleList(ModelAndView mav);
	public void scheduleWrite(ModelAndView mav);
	public void scheduleView(ModelAndView mav);
	public void scheduleWriteOk(ModelAndView mav);
}