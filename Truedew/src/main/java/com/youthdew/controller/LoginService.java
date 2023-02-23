package com.youthdew.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.youthdew.model.MemberVO;
import com.youthdew.model.MemberDAO;

public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	      PrintWriter out = response.getWriter();
	      String user_id = request.getParameter("user_id");
	      String user_pw = request.getParameter("user_pw");
	      
	      MemberVO vo = new MemberVO(user_id,user_pw);
	      
	      MemberDAO dao = new MemberDAO();
	      //로그인 처리 (db에 값이 있는지 확인) -> 사용자의 정보 가져오기
	      MemberVO lvo = dao.login(vo);
	   
	      //로그인 성공 / 실패 판단
	      if(lvo!=null) { //로그인 성공
	         System.out.println("로그인 성공");
	         HttpSession session = request.getSession();
	         session.setAttribute("loginM", lvo);
	         response.sendRedirect("main2.jsp");
	      }else {
	    	  System.out.println("로그인 실패");
	    	  response.sendRedirect("login.jsp");
	      }
	   // main.jsp 로 이동
	      
		         
		         
		      }
		
	

}
