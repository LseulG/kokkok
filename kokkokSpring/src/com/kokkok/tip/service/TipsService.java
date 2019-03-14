package com.kokkok.tip.service;

import java.util.List;
import java.util.Map;

import com.kokkok.comm.PageNavigation;
import com.kokkok.dto.TipsDto;

public interface TipsService {

	int writeArticle(Map<String, Object> map);
	List<TipsDto> listArticle(Map<String, String> map);
	TipsDto viewArticle(int seq);
	TipsDto getArticle(int seq);
	void modifyArticle(TipsDto tipsDto);
	void deleteArticle(TipsDto tipsDto);
	
	PageNavigation getPageNavigation(Map<String, String> map);
	TipsDto viewArticle(String string);
	int writeArticle(TipsDto tipsDto);
	int getNextSeq();
}


