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

import com.youthdew.model.CenterVO;
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
		SpaceListDAO dao2 = new SpaceListDAO();

		ArrayList<SpaceListVO> list= (ArrayList)dao.selectspace(vo);
		CenterVO cvo = dao2.selectcenter(center_name);
		
		request.setAttribute("list", list);
		request.setAttribute("center_info", cvo);
		RequestDispatcher rd = request.getRequestDispatcher("SpaceReservation.jsp");
		rd.forward(request, response);
	}

}
