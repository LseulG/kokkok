package com.kokkok.schedule.service;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.main.dao.MainDao;
import com.kokkok.schedule.dao.ScheduleDao;

@Component
public class ScheduleServiceImpl implements ScheduleService {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public void scheduleList(ModelAndView mav) {
		mav.setViewName("/schedule/list");
	}

	@Override
	public int scheduleWrite(Map<String, Object> map) {
		int seq = sqlSessionTemplate.getMapper(MainDao.class).getNextSeq();		
		map.put("seq", seq);		
		
		ScheduleDao scheduleDao = sqlSessionTemplate.getMapper(ScheduleDao.class);
		return scheduleDao.scheduleWrite(map);
	}

	@Override
	public int scheduleReviewWrite(Map<String, Object> map) {
		int seq = sqlSessionTemplate.getMapper(MainDao.class).getNextSeq();		
		map.put("seq", seq);
		int sseq = sqlSessionTemplate.getMapper(ScheduleDao.class).getNextSseq();
		map.put("sseq", sseq);
		
		ScheduleDao scheduleDao = sqlSessionTemplate.getMapper(ScheduleDao.class);
		return scheduleDao.scheduleReviewWrite(map);
	}
	
	@Override
	public void scheduleView(ModelAndView mav) {
		mav.setViewName("/schedule/view");
	}
	
}
