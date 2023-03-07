package com.youthdew.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.youthdew.model.MemberDAO;
import com.youthdew.model.MemberVO;


@WebServlet("/IdPasswordService")
public class IdPasswordService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		   request.setCharacterEncoding("UTF-8");
		   response.setContentType("text/html;charset=UTF-8");
		   PrintWriter out = response.getWriter();
		   String user_name = request.getParameter("user_name");
		   String user_phone =request.getParameter("user_phone");
		   
		   
		   
		   MemberDAO dao = new MemberDAO();
		   MemberVO vo = new MemberVO(user_name,user_phone);
		   MemberVO lvo = dao.idSearch(vo);
		   
		   if( lvo!=null) {
			   out.println("<script>alert('"+user_name+"님의 아이디는 "+lvo.getUser_id()+" 입니다.'); location.href='IdPassword.jsp'"+"</script>");
		   }else {
			   out.println("<script>alert('회원가입된 이력이 없습니다.'); location.href='IdPassword.jsp'"+"</script>");
		
		   }	  
		   
	}



}
