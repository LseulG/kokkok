package com.kokkok.members.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.kokkok.util.*;


@WebServlet("/members")
public class MembersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String act = request.getParameter("act");
		
		int bcode = Validator.notNumberToZero((request.getParameter("bcode")));
		int pg = Validator.notNumberToOne((request.getParameter("pg")));
		String key =  Validator.nullToBlank(request.getParameter("key"));
		String word = Validator.nullToBlank(request.getParameter("word"));

		String queryString = "?bcode=" + bcode + "&pg=" + pg + "&key=" + key + "&word=" + URLEncoder.encode(word, BoardConstance.ENCODER);
		
		
		String path = "/index.jsp";
		if("mvlogin".equals(act)) {
			path ="/member/login/login.jsp" + queryString;
			PageMove.redirect(request, response, path);
			
		}else if("mvregister".equals(act)) {
			path ="/member/join/register.jsp" + queryString;
			PageMove.redirect(request, response, path);
			
		}else if("mvmyinfo".equals(act)) {
			
			path ="/member/myMenu/myInfo/list.jsp" + queryString;
			PageMove.redirect(request, response, path);
			
		}else if("mvwritelist".equals(act)) {
			
			path ="/member/myMenu/myWrite/list.jsp" + queryString;
			PageMove.redirect(request, response, path);
			
		}else if("mvwishlist".equals(act)) {			
			path ="/member/myMenu/myWish/list.jsp" + queryString;
			PageMove.redirect(request, response, path);

			
	///admin
		}else if("mvmemberslist".equals(act)) {
			
			path ="/admin/members/list.jsp" + queryString;
			PageMove.redirect(request, response, path);
			
		}else if("".equals(act)) {
			
		}else{			
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(BoardConstance.ENCODER);
		doGet(request, response);
	}

}
