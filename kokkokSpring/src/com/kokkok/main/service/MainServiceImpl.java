package com.kokkok.main.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.dto.CommentsDto;
import com.kokkok.main.dao.MainDao;

@Component
public class MainServiceImpl implements MainService{	
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//찜 하기
	@Override
	public int registerWish(Map<String, Object> map) {	
		MainDao maindao = sqlSessionTemplate.getMapper(MainDao.class);		
		int cnt = maindao.checkWish(map);
		int check = 0;
		if(cnt > 0) {
			maindao.deleteWish(map);
			maindao.minusWish(map);				
		}else {		
			check = maindao.registerWish(map);
			maindao.addWish(map);
		}						
	return check;
	}
	
	@Override
	public int checkWish(Map<String, Object> map) {	
		MainDao maindao = sqlSessionTemplate.getMapper(MainDao.class);		
		return maindao.checkWish(map);	
	}

	@Override
	public int countWish(Map<String, Object> map) {
		MainDao maindao = sqlSessionTemplate.getMapper(MainDao.class);
		return maindao.countWish(map);
	}
	
	
	//추천 하기
		@Override
		public int registerRecommend(Map<String, Object> map) {	
			MainDao maindao = sqlSessionTemplate.getMapper(MainDao.class);		
			int cnt = maindao.checkRecommend(map);
			int check = 0;
			if(cnt > 0) {
				maindao.deleteRecommend(map);
				maindao.minusRecommend(map);				
			}else {		
				check = maindao.registerRecommend(map);
				maindao.addRecommend(map);
			}						
		return check;
		}
		
		@Override
		public int checkRecommend(Map<String, Object> map) {	
			MainDao maindao = sqlSessionTemplate.getMapper(MainDao.class);		
			return maindao.checkRecommend(map);	
		}

		@Override
		public int countRecommend(Map<String, Object> map) {
			MainDao maindao = sqlSessionTemplate.getMapper(MainDao.class);
			return maindao.countRecommend(map);
		}
	
	
	
	
	
	
	//다음글번호얻기
	@Override
	public int getNextSeq() {	
		MainDao maindao = sqlSessionTemplate.getMapper(MainDao.class);
		return maindao.getNextSeq();
	}
	
	//조회수증가
	@Override
	public int updateHit(String seq) {
		MainDao maindao = sqlSessionTemplate.getMapper(MainDao.class);
		return maindao.updateHit(seq);
	}
	
	
	
	
	//댓글
	@Override
	public int writeComments(CommentsDto commentsDto) {
		MainDao maindao = sqlSessionTemplate.getMapper(MainDao.class);
		return maindao.writeComments(commentsDto);
	}
	@Override
	public List<CommentsDto> commentsList(String seq) {
		List<CommentsDto> list = sqlSessionTemplate.getMapper(MainDao.class).commentsList(seq);
		for(int i = 0;i<list.size();i++) {
			list.get(i).setCcontent(list.get(i).getCcontent().replaceAll("\n", "<br>"));
		}
		return list;
	}
	@Override
	public int commentsDelete(String cseq) {
		MainDao maindao = sqlSessionTemplate.getMapper(MainDao.class);
		return maindao.commentsDelete(cseq);
	}
	@Override
	public int commentsUpdate(Map<String, Object> map) {
		MainDao maindao = sqlSessionTemplate.getMapper(MainDao.class);
		System.out.println(map.get("ccontent"));
		System.out.println(map.get("cseq"));
		return maindao.commentsUpdate(map);
	}

	
}
