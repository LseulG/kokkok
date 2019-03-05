package com.kokkok.schedule.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.schedule.dao.ScheduleDao;

@Component
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private ScheduleDao scheduleDao;
	
	@Override
	public void scheduleList(ModelAndView mav) {
		mav.setViewName("/schedule/list");
	}

}
