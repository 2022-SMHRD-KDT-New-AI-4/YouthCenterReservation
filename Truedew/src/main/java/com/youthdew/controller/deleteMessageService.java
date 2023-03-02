package com.youthdew.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youthdew.model.MarkVO;
import com.youthdew.model.MemberDAO;
import com.youthdew.model.MessageVO;

@WebServlet("/deleteMessageService")
public class deleteMessageService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int msg_seq = Integer.parseInt(request.getParameter("msg_seq"));
		System.out.println(msg_seq);
		
		MemberDAO dao = new MemberDAO();				
		int cnt = dao.deleteMessage(msg_seq);
		
		
		if(cnt>0) {
			System.out.println("메세지 삭제 성공");
		} else {
			System.out.println("메세지 삭제 실패");
		}
		response.sendRedirect("Message.jsp");
	
	}

}
