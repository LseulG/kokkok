package com.kokkok.tip.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.comm.PageNavigation;
import com.kokkok.dto.MemberDto;
import com.kokkok.dto.TipsDto;
import com.kokkok.tip.service.TipsService;


@Controller
public class TipsController {
	
	@Autowired
	private TipsService tipsService;

	
	@RequestMapping(value="/tips/list.kok", method=RequestMethod.GET)
	public ModelAndView list(@RequestParam Map<String, String> map) {
		
		System.out.println("aaaaaaaaaaaaaaaaaa");
		ModelAndView mav = new ModelAndView();		
		List<TipsDto> list = tipsService.listArticle(map);
		System.out.println(list.size());
		PageNavigation navigation = tipsService.getPageNavigation(map);
		navigation.setRoot("/board"); 
		navigation.makeNavigator();
		mav.addObject("list", list);
		mav.addObject("navigator", navigation);
		mav.setViewName("tips/list");
		return mav;
	}
	
	@RequestMapping(value="/tips/write.kok", method=RequestMethod.GET)
	public String write() {
		System.out.println("첫번째테스트");
		return "tips/write";
		
	}
	
	@RequestMapping(value="/tips/write.kok",method=RequestMethod.POST)
	public ModelAndView Write(@RequestParam Map<String, Object> map, HttpSession session) {
		System.out.println("테스트post");
		//MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		//map.put("userid", memberDto.getUserid());
		map.put("userid", "lee");
		
		int seq = tipsService.getNextSeq();			
		map.put("seq",seq);
		
		int cnt = tipsService.writeArticle(map);
		String path = "tips/list";
		
		ModelAndView mav = new ModelAndView();	
		if(cnt != 0) {
			TipsDto tipsDto = tipsService.viewArticle(seq+"");			
			mav.addObject("article",tipsDto);			
			path = "tips/view";
		}		
		mav.setViewName(path);
		return mav;
	}
	
	
	
/*	@RequestMapping(value="/tips/write.kok", method=RequestMethod.POST)
	public String write(TipsDto tipsDto, HttpSession session, Model model) {
		System.out.println("두번째write");
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) {
			tipsDto.setUserid(memberDto.getUserid());
			
			int seq = tipsService.writeArticle(tipsDto);
			if(seq != 0) {
				model.addAttribute("wseq", seq);
			} else {
				model.addAttribute("errorMsg", "���ۼ� ����");
			}
		} else {
			model.addAttribute("errorMsg", "�α����� �ʿ��� �����Դϴ�.");
		}	
		return "tips/list";
	}*/
	@RequestMapping(value="/tips/view.kok", method=RequestMethod.GET)
	public String view(@RequestParam int seq, HttpSession session, ModelMap model) {
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) {
			TipsDto tipsDto = (TipsDto) tipsService.viewArticle(seq);
			model.addAttribute("article", tipsDto);
		}
		return "tips/view";
	}
	
/*	@RequestMapping(value="/tips/comments.kok", method=RequestMethod.GET) 
	public String reply(@RequestParam int seq, HttpSession session, ModelMap model) {
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) {
			ReboardDto reboardDto = (ReboardDto) reboardService.getArticle(seq);
			model.addAttribute("article", reboardDto);
		}
		return "tips/comments";
	}
	
	@RequestMapping(value="reply.kitri", method=RequestMethod.POST)
	public String reply(ReboardDto reboardDto, HttpSession session, Model model) {
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) {
			reboardDto.setId(memberDto.getId());
			reboardDto.setName(memberDto.getName());
			reboardDto.setEmail(memberDto.getEmail1() + "@" + memberDto.getEmail2());
			int seq = reboardService.replyArticle(reboardDto);
			if(seq != 0) {
	 			model.addAttribute("wseq", seq);
			} else {
				model.addAttribute("errorMsg", "���ۼ� ����!!!!");
			} 
		} else {
			model.addAttribute("errorMsg", "�α����� �ʿ��� �������Դϴ�.!!!!");
		}
		return "reboard/writeok";
	} */
	
	@RequestMapping(value="/tips/modify.kok", method=RequestMethod.GET)
	public String modify(@RequestParam("seq") int seq, HttpSession session, ModelMap model) {
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) {
			TipsDto tipsDto = (TipsDto) tipsService.getArticle(seq);
			model.addAttribute("article", tipsDto);
		}
		return "tips/modify";
	}
	
	@RequestMapping(value="/tips/modify.kok", method=RequestMethod.POST)
	public String modify(TipsDto tipsDto, HttpSession session, Model model) {
		tipsService.modifyArticle(tipsDto);
		tipsDto = (TipsDto) tipsService.getArticle(tipsDto.getSeq());
		model.addAttribute("article", tipsDto);
		return "tips/view";
	}
	
	@RequestMapping(value="/tips/delete.kok", method=RequestMethod.GET)
	public String delete(TipsDto tipsDto, HttpSession session, Model model) {
		tipsService.deleteArticle(tipsDto);
		return "tips/list";
	}
	

	
}
