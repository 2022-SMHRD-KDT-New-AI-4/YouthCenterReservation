package com.youthdew.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youthdew.model.MemberDAO;
import com.youthdew.model.MemberVO;

@WebServlet("/CheckService")
public class CheckService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String user_id = request.getParameter("user_id");
		MemberVO vo = new MemberVO(user_id);
		MemberDAO dao = new MemberDAO();
		PrintWriter out = response.getWriter();
		
		// 사용자 정보 가져오기(db에 값이 있는지 확인)
		MemberVO lvo = dao.userSearch(vo);
		
		// 회원정보 조회
		if(lvo!=null) { //회원정보 존재
			System.out.println("회원정보 존재");
			out.print("fail");
			
		} else { // 회원정보 없음
			System.out.println("회원정보 없음");
			out.print("success");
		}
		
		

	
	
	
	}

}
