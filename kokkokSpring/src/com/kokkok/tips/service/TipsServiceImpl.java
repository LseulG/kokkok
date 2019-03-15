package com.kokkok.tips.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kokkok.dto.TipsDto;
import com.kokkok.tips.dao.TipsDao;

@Component
public class TipsServiceImpl implements TipsService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int tipsWrite(Map<String, Object> map) {
		TipsDao tipsDao = sqlSessionTemplate.getMapper(TipsDao.class);		
		return tipsDao.tipsWrite(map);
	}

	@Override
	public TipsDto tipsView(String seq) {
		/*System.out.println("tipsView : " + seq);*/
		TipsDao tipsDao = sqlSessionTemplate.getMapper(TipsDao.class);		
		return tipsDao.tipsView(seq);
	}
	
	@Override
	public List<TipsDto> tipsList(Map<String, Object> map) {
		TipsDao tipsDao = sqlSessionTemplate.getMapper(TipsDao.class);		
		return tipsDao.tipsList(map);
	}

	@Override
	public int tipsUpdate(Map<String, Object> map) {
		TipsDao tipsDao = sqlSessionTemplate.getMapper(TipsDao.class);		
		return tipsDao.tipsUpdate(map);
	}

	@Override
	public int tipsDelete(Map<String, Object> map) {
		TipsDao tipsDao = sqlSessionTemplate.getMapper(TipsDao.class);		
		return tipsDao.tipsDelete(map);
	}



	
}
