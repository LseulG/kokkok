package com.kokkok.schedule.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

import com.kokkok.dto.ScheduleReviewDto;
import com.kokkok.dto.ScheduleViewDto;

public interface ScheduleService {
	public void scheduleList(ModelAndView mav);
	
	public int scheduleWrite(Map<String, Object> map);
	public int scheduleReviewWrite(Map<String, Object> map);
	
	public String selectSseq();
	public ScheduleViewDto scheduleView(String sseq);
	public List<ScheduleReviewDto> scheduleReviewView(String sseq);
}