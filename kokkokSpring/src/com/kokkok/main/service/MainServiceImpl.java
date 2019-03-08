package com.kokkok.main.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.main.dao.MainDao;

@Component
public class MainServiceImpl implements MainService{
	
	@Autowired
	private MainDao maindao;
	
//	@Override
//	public void registerWish(ModelAndView mav) {
//		
//		Map<String, Object> map = mav.getModelMap();
//		HttpServletRequest request = (HttpServletRequest)map.get("request");
//		String seq = request.getParameter("seq");
//		String id = request.getParameter("key");
//		
//		int check = 0;
//		int num = maindao.countWish(seq,id);		
//		if(num > 0) {
//			maindao.deleteWish(seq,id);			
//		}else {		
//			check = maindao.registerWish(seq,id);
//		}
		
		@Override
		public int registerWish(ModelAndView mav) {			
			Map<String, Object> map = mav.getModelMap();
			HttpServletRequest request = (HttpServletRequest)map.get("request");
			String seq = request.getParameter("seq");
			String id = request.getParameter("key");			
			int check = 0;
			int num = maindao.checkWish(seq,id);		
			if(num > 0) {
				maindao.deleteWish(seq,id);
				maindao.minusWish(seq);				
			}else {		
				check = maindao.registerWish(seq,id);
				maindao.addWish(seq);
			}
						
		return check;

	}
	@Override
	public int checkWish(ModelAndView mav) {
		
		Map<String, Object> map = mav.getModelMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String seq = request.getParameter("seq");
		String id = request.getParameter("key");
		int check = maindao.checkWish(seq,id);	
		return check;
		
	}

	@Override
	public int countWish(ModelAndView mav) {
		Map<String, Object> map = mav.getModelMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String seq = request.getParameter("seq");
		int count = maindao.countWish(seq);	
		return count;
	}
}
