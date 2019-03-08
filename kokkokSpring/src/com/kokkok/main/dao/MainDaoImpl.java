package com.kokkok.main.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class MainDaoImpl implements MainDao{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int checkWish(String seq, String id) {
		Map<String, String> hMap = new HashMap<>();
		hMap.put("seq", seq);
		hMap.put("id", id);
		return sqlSessionTemplate.selectOne("checkWish",hMap);
	}
	
	@Override
	public int registerWish(String seq, String id) {		
		Map<String, String> hMap = new HashMap<>();
		hMap.put("seq", seq);
		hMap.put("id", id);
		return sqlSessionTemplate.insert("registerWish",hMap);
	}

	@Override
	public int deleteWish(String seq, String id) {
		Map<String, String> hMap = new HashMap<>();
		hMap.put("seq", seq);
		hMap.put("id", id);
		return sqlSessionTemplate.insert("deleteWish",hMap);
	}

	@Override
	public int countWish(String seq) {
		Map<String, String> hMap = new HashMap<>();
		hMap.put("seq", seq);
		return sqlSessionTemplate.selectOne("countWish",hMap);
	}

	@Override
	public int addWish(String seq) {
		Map<String, String> hMap = new HashMap<>();
		hMap.put("seq", seq);
		return sqlSessionTemplate.update("addWish",hMap);
	}

	@Override
	public int minusWish(String seq) {
		Map<String, String> hMap = new HashMap<>();
		hMap.put("seq", seq);
		return sqlSessionTemplate.update("minusWish",hMap);
	}
	
	
	

	
}
