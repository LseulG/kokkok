package com.kokkok.board.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.kokkok.board.action.information.InformationListAction;
import com.kokkok.board.action.information.InformationMoveViewAction;
import com.kokkok.util.*;


@WebServlet("/information")
public class InformationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String act = request.getParameter("act");
		
		int bcode = Validator.notNumberToZero((request.getParameter("bcode")));
		int pg = Validator.notNumberToOne((request.getParameter("pg")));
		String key =  Validator.nullToBlank(request.getParameter("key"));
		String word = Validator.nullToBlank(request.getParameter("word"));

		String queryString = "?bcode=" + bcode + "&pg=" + pg + "&key=" + key + "&word=" + URLEncoder.encode(word, BoardConstance.ENCODER);
		
		
		
		String path = "/index.jsp";
		if("list".equals(act)) {
			System.out.println("if list: " + act);
			
			path ="/information/list.jsp" + queryString;
			PageMove.redirect(request, response, path);
			
		} else if ("informationlist".equals(act)) {	// 직접 DB를 얻지 않으므로 쓰지 않음
			path = InformationListAction.getInformationListAction().execute(request, response);			
		} else if ("mvview".equals(act)) {	// 관광정보 리스트에서 세부정보로 이동
			path = InformationMoveViewAction.getInformationMoveViewAction().execute(request, response);
//			System.out.println("mvview path: " + path);
			response.sendRedirect(request.getContextPath() + path);
//			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
//			dispatcher.forward(request, response);			
		} else if ("informationview".equals(act)) {	// 직접 DB를 얻지 않으므로 쓰지 않음
			
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(BoardConstance.ENCODER);
		doGet(request, response);
	}
}
