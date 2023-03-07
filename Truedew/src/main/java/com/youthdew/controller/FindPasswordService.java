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


@WebServlet("/FindPasswordService")
public class FindPasswordService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		   request.setCharacterEncoding("UTF-8");
		   response.setContentType("text/html;charset=UTF-8");
		   PrintWriter out = response.getWriter();
		   String user_id = request.getParameter("user_id");
		   String user_name = request.getParameter("user_name");
		   String user_phone =request.getParameter("user_phone");
		   
		   
		   MemberDAO dao = new MemberDAO();
		   MemberVO vo = new MemberVO(user_id, user_name, user_phone);
		   MemberVO lvo = dao.pwSearch(vo);
		   if( lvo!=null) {
			   out.println("<script>alert('"+user_name+"님의 비밀번호는 "+lvo.getUser_pw()+" 입니다.'); location.href='login.jsp'"+"</script>");
			   		//+ "location.href='"+request.getContextPath()+"</script>");
		   }else {
			   out.println("<script>alert('잘못된 회원정보입니다.'); location.href='IdPassword.jsp'"+"</script>");
		
			   		//+ "location.href="+request.getContextPath()+"</script>");
		   }	  
		   

}
}
