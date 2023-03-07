package com.youthdew.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.youthdew.model.MemberDAO;
import com.youthdew.model.MemberVO;


@WebServlet("/DeleteMemberService")
public class DeleteMemberService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//POST일때만 추가
		//쿼리스트링은 URI 에 실어져 있기 때문에 servers/server.xml 파일
		// -> URIEncoding = "UTF-8" (GET)
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		String user_id = request.getParameter("user_id");
		
		MemberVO vo = new MemberVO(user_id);
		
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.delete(user_id);
		int lvo = dao.delete(user_id);
		
		if(cnt>0) {
			out.print("<script>");
            out.print("alert('회원탈퇴되었습니다.');");
            out.print("location.href='LogoutService'");
            out.print("</script>");
            HttpSession session = request.getSession();
	         session.setAttribute("loginM", lvo);
		}else {
			System.out.println("회원 삭제 실패");
		}
		
		
	}

}
