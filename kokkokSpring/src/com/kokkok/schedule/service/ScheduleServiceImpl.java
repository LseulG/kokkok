package com.kokkok.schedule.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.schedule.dao.ScheduleDao;
import com.kokkok.schedule.dto.ScheduleDto;

@Component
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private ScheduleDao scheduleDao;
	
	@Override
	public void scheduleList(ModelAndView mav) {
		mav.setViewName("/schedule/list");
	}

	@Override
	public void scheduleWrite(ModelAndView mav) {
		mav.setViewName("/schedule/write");
	}

	@Override
	public void scheduleView(ModelAndView mav) {
		mav.setViewName("/schedule/view");
	}
	
	@Override
	public void scheduleWriteOk(ModelAndView mav) {
		
		Map<String, Object> map = mav.getModelMap();
		ScheduleDto scheduleDto = (ScheduleDto)map.get("ScheduleDto");
		
		//scheduleDto.setContent(scheduleDto.getContent().replace("\r\n", "<br/>"));
		
		int check = scheduleDao.insert(scheduleDto);
		if(check>0) {			
			mav.addObject("check",check);
			mav.setViewName("/schedule/view");
		}
	
		
	}

}
