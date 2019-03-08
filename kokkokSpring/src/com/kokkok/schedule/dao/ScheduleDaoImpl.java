package com.kokkok.schedule.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kokkok.schedule.dto.ScheduleDto;

@Component
public class ScheduleDaoImpl implements ScheduleDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int insert(ScheduleDto scheduleDto) {	
		return sqlSessionTemplate.insert("ScheduleDto",scheduleDto);
	}

}
