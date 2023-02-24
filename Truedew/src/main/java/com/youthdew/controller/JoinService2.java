package com.youthdew.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youthdew.model.MemberDAO;
import com.youthdew.model.MemberVO;

/**
 * Servlet implementation class JoinService2
 */
@WebServlet("/JoinService2")
public class JoinService2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
	String user_name = request.getParameter("user_name");
	String user_birthdate = request.getParameter("user_birthdate");
	String user_phone = request.getParameter("user_phone");
	
	
	PrintWriter out = response.getWriter();
	MemberVO vo = new MemberVO(user_id, user_pw, user_name, user_birthdate, user_phone);
	
	MemberDAO dao = new MemberDAO();
	
	
	try {
		int cnt = dao.join(vo);
		if(cnt > 0) {
			System.out.println("회원가입 성공");
			// join_success.jsp 로 이동 (사용자가 작성한 이메일 화면에 출력)
			// response.sendRedirect("join_success.jsp")
			// email값을 공유 -> forwarding 방식을 사용해 request 공유
			request.setAttribute("user_id",user_id); // 공유하고 싶은 데이터 request 영역에 저장 (우리가쓸이름(식별값) , 실제이름)
			RequestDispatcher rd = request.getRequestDispatcher("joinsuccess.jsp");
			rd.forward(request, response);
		}else {
			System.out.println("회원가입 실패");
			// main.jsp 로 이동
		}
	}catch(Exception e) {
		out.print("<script>");
        out.print("alert('중복된 아이디입니다. 회원가입을 다시 진행해주세요.');");
        out.print("location.href='join.jsp'");
        out.print("</script>");
		
	}
	finally {
		// 리소스 반납, 정리 작업
	}
	
	
}

}

