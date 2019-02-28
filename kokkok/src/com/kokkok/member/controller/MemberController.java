package com.kokkok.member.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.jsp.PageContext;

import org.apache.jasper.tagplugins.jstl.core.Param;

import com.kokkok.member.model.MemberDto;
import com.kokkok.member.model.service.MemberService;
import com.kokkok.member.model.service.MemberServiceImpl;
import com.kokkok.util.*;

@WebServlet("/member")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	MemberService memberService;

	public void init() {
		memberService = new MemberServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String act = request.getParameter("act");

		String path = "/index.jsp";
		if ("mvregister".equals(act)) {
			path = "/member/join/register.jsp";
			PageMove.redirect(request, response, path);

		} else if ("mvmyinfo".equals(act)) {
			path = "/member/myMenu/myInfo/view.jsp";
			PageMove.redirect(request, response, path);

		} else if ("mvwritelist".equals(act)) {
			path = "/member/myMenu/myWrite/list.jsp";
			PageMove.redirect(request, response, path);

		} else if ("mvwishlist".equals(act)) {
			path = "/member/myMenu/myWish/list.jsp";
			PageMove.redirect(request, response, path);
		} else if ("mvidcheck".equals(act)) {
			path = "/member/join/idcheck.jsp";
			PageMove.redirect(request, response, path);
		} else if ("register".equals(act)) {

			MemberDto memberDto = new MemberDto();
			memberDto.setName(request.getParameter("username"));
			memberDto.setId(request.getParameter("userid"));
			memberDto.setPass(request.getParameter("userpass"));
			memberDto.setEmail(request.getParameter("useremail"));

			int cnt = memberService.register(memberDto);
			System.out.println(cnt);
			System.out.println(memberDto.getId() + memberDto.getEmail() + memberDto.getPass() + memberDto.getName());
			if (cnt != 0) {
				path = "/member/join/registerok.jsp";
				request.setAttribute("registerInfo", memberDto);
				PageMove.forward(request, response, path); // 占쎌젟癰귣�占쏙옙 揶쏉옙占쎌죬揶쏉옙占쎈튊占쎈┷占쎈빍繹먲옙 forward
			} else {
				path = "/member/join/registerfail.jsp";
				PageMove.redirect(request, response, path);
			}

		} else if ("login".equals(act)) {
			String id = request.getParameter("loginid");
			String pass = request.getParameter("loginpass");
			MemberDto memberDto = memberService.login(id, pass);
			if (memberDto != null) {// 濡쒓렇�씤 �맟�쓣�븣
				System.out.println(memberDto.toString());
				////////////////////////// session �꽕�젙/////////////////////////////////////////
				HttpSession session = request.getSession();
				session.setAttribute("userInfo", memberDto);
				path = "/index.jsp";
			}else {
				path = "/member/join/register.jsp";
			}
			PageMove.redirect(request, response, path);
		} else if ("logout".equals(act)) {
			HttpSession session = request.getSession();
//			session.setAttribute("userInfo", null); �븞醫뗭�諛⑸쾿
//			session.removeAttribute("userInfo"); �씪諛섏쟻�씤諛⑸쾿
			session.invalidate();// �꽭�뀡�븞�뿉 �엳�뒗嫄� �떦�떎 吏��썙�씪
			PageMove.redirect(request, response, path);
			path = "/index.jsp";
			
		} else if ("mvidcheck".equals(act)) {
			path =  "/member/join/idcheck.jsp";
			PageMove.redirect(request, response, path);
		} else if ("idcheck".equals(act)) {
			String id = request.getParameter("checkid");
			int idCnt = memberService.idCheck(id);
			request.setAttribute("checkid", id);
			request.setAttribute("idCnt", idCnt);
			path =  "/member/join/idcheck.jsp";
			PageMove.forward(request, response, path);
		} else if ("mvmodify".equals(act)) {
			path = "/member/myMenu/myInfo/modify.jsp";
			PageMove.redirect(request, response, path);
			
		} else if ("mvdelete".equals(act)) {
			path = "/member/myMenu/myInfo/delete.jsp";
			PageMove.redirect(request, response, path);

		}else if ("".equals(act)) {

		}
		else {
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding(BoardConstance.ENCODER);
		doGet(request, response);
	}

}
