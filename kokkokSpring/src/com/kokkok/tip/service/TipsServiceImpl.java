package com.kokkok.tip.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kokkok.comm.Constance;
import com.kokkok.comm.PageNavigation;
import com.kokkok.dto.TipsDto;
import com.kokkok.tip.dao.TipsDao;


@Service
public class TipsServiceImpl implements TipsService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int writeArticle(TipsDto tipsDto) {
		int seq = sqlSession.getMapper(TipsDao.class).getNextSeq();
		tipsDto.setSeq(seq);
		return sqlSession.getMapper(TipsDao.class).writeArticle(tipsDto) == 0 ? 0 : seq;
	}

	@Override
	public List<TipsDto> listArticle(Map<String, String> map) {
		int pg = Integer.parseInt(map.get("pg"));
		int end = pg * Constance.BOARD_LIST_SIZE;
		int start = end - Constance.BOARD_LIST_SIZE;
		map.put("start", start+"");
		map.put("end", end+"");		
		return sqlSession.getMapper(TipsDao.class).listArticle(map);
	}

	@Override
	public TipsDto viewArticle(int seq) {
		sqlSession.getMapper(TipsDao.class).updateHit(seq);
		TipsDto tipsDto = sqlSession.getMapper(TipsDao.class).viewArticle(seq);
		if(tipsDto != null) {
			tipsDto.setContent(tipsDto.getContent().replaceAll("\n", "<br>"));
		}
		return tipsDto;
	}

	@Override
	public TipsDto getArticle(int seq) {
		return sqlSession.getMapper(TipsDao.class).viewArticle(seq);
	}

	@Override
	public void modifyArticle(TipsDto tipsDto) {
		TipsDao tipsDao = sqlSession.getMapper(TipsDao.class);
		tipsDto.setContent(tipsDto.getContent().replaceAll("\n", "<br>"));
		tipsDao.modifyArticle(tipsDto);
		
	}

	@Override
	public void deleteArticle(TipsDto tipsDto) {
		TipsDao tipsDao = sqlSession.getMapper(TipsDao.class);
		tipsDao.deleteArticle(tipsDto);
		
	}

	public PageNavigation getPageNavigation(Map<String, String> map) {
		int listSize = Constance.BOARD_LIST_SIZE;
		int pageSize = Constance.NAVIGATOR_SIZE;
		int pg = Integer.parseInt(map.get("pg"));
		
		PageNavigation navigator = new PageNavigation();
		navigator.setPageNo(pg);
		int newArticleCount = sqlSession.getMapper(TipsDao.class).getNewArticleCount(Integer.parseInt(map.get("bcode")));
		navigator.setNewArticleCount(newArticleCount);
		int totalArticleCount = sqlSession.getMapper(TipsDao.class).getTotalArticleCount(map);
		navigator.setTotalArticleCount(totalArticleCount);
		int totalPageCount = (totalArticleCount - 1) / listSize + 1;
		navigator.setTotalPageCount(totalPageCount);
		navigator.setNowFirst(pg <= pageSize);
		navigator.setNowEnd((totalPageCount - 1) / pageSize * pageSize < pg);
		return navigator;		
	}

	@Override
	public int writeArticle(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	public TipsDto viewArticle(String string) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getNextSeq() {
		// TODO Auto-generated method stub
		return 0;
	}
	


	
}
