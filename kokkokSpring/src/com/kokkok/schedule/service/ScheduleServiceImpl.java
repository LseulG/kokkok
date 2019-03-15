package com.kokkok.schedule.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.dto.ScheduleBoardDto;
import com.kokkok.dto.ScheduleReviewDto;
import com.kokkok.dto.ScheduleViewDto;
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
	public String selectSseq() {
		int sseq = sqlSessionTemplate.getMapper(ScheduleDao.class).getNextSseq();
		return Integer.toString(sseq);
	}
	
	@Override
	public ScheduleViewDto scheduleView(String sseq) {
		ScheduleDao scheduleDao = sqlSessionTemplate.getMapper(ScheduleDao.class);
		return scheduleDao.scheduleView(sseq);
	}

	@Override
	public List<ScheduleReviewDto> scheduleReviewView(String sseq) {
		List<ScheduleBoardDto> list = sqlSessionTemplate.getMapper(ScheduleDao.class).selectReview(sseq);
		
		List<ScheduleReviewDto> reviewList = new ArrayList<>();
		for (int i=0; i<list.size(); i++) {
			String seq = Integer.toString(list.get(i).getSeq());		
			reviewList.add(sqlSessionTemplate.getMapper(ScheduleDao.class).scheduleReviewView(seq));
		}
		
		return reviewList;
	}
	
}
