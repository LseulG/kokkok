package com.kokkok.schedule.dao;

import java.util.Map;

import com.kokkok.dto.ScheduleDto;

public interface ScheduleDao {
	public int scheduleWrite(Map<String, Object> map);
	public int getNextSseq();
	public int scheduleReviewWrite(Map<String, Object> map);
}
