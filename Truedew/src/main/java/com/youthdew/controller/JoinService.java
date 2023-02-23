package com.youthdew.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youthdew.model.MemberDAO;
import com.youthdew.model.MemberVO;

public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String USER_ID = request.getParameter("USER_ID");
		String USER_PW = request.getParameter("USER_PW");
		String USER_NAME = request.getParameter("USER_NAME");
		String BIRTH = request.getParameter("BIRTH");
		String TEL = request.getParameter("TEL");
		
		MemberVO vo = new MemberVO(USER_ID , USER_PW , USER_NAME , BIRTH , TEL);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(vo);
		
		
		
		if(cnt > 0) {
			System.out.println("회원가입 성공");
			// join_success.jsp 로 이동 (사용자가 작성한 이메일 화면에 출력)
			// response.sendRedirect("join_success.jsp")
			// email값을 공유 -> forwarding 방식을 사용해 request 공유
			RequestDispatcher rd = request.getRequestDispatcher("joinsuccess.jsp");
			request.setAttribute("USER_ID",USER_ID); // 공유하고 싶은 데이터 request 영역에 저장 (우리가쓸이름(식별값) , 실제이름)
			rd.forward(request, response);
		}else {
			System.out.println("회원가입 실패");
			
			// main.jsp 로 이동
			response.sendRedirect("main.jsp");
		}
		
		
	}
	
}
