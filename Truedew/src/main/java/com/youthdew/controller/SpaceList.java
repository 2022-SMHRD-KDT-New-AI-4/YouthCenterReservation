package com.youthdew.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.youthdew.model.SpaceListDAO;
import com.youthdew.model.SpaceListVO;


@WebServlet("/SpaceList")
public class SpaceList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String local_do = request.getParameter("local_do");
		String center_name = request.getParameter("center_list");

		SpaceListVO vo = new SpaceListVO(center_name, local_do);
		SpaceListDAO dao= new SpaceListDAO();

		ArrayList<SpaceListVO> list= (ArrayList)dao.selectspace(vo);
		
		for (int i = 0; i < list.size();i++) {
			System.out.println(list.get(i).getShared_space_pic());
			System.out.println(list.get(i).getShared_space_name());
			System.out.println(list.get(i).getLocal_do());
			System.out.println(list.get(i).getPersons());
			
		}
		
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("mySpaceReservation.jsp");
		rd.forward(request, response);
	}

}
