package com.kokkok.tip.dao;

import java.util.List;
import java.util.Map;

import com.kokkok.dto.TipsDto;

public interface TipsDao {

	int writeArticle(TipsDto tipsDto);
	List<TipsDto> listArticle(Map<String, String> map);
	TipsDto viewArticle(int seq);
	int modifyArticle(TipsDto tipsDto);
	void deleteArticle(TipsDto tipsDto);
	
	int getNextSeq();
	void updateHit(int seq);
	
	int getNewArticleCount(int bcode);
	int getTotalArticleCount(Map<String, String> map);

}

