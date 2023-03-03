package com.youthdew.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/SearchDayService")
public class SearchDayService extends HttpServlet {
   private static final long serialVersionUID = 1L;


   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      PrintWriter out = response.getWriter();
         // 1:일 2:월 3:화 4:수 5:목 6:금 7:토
         String inputDate= request.getParameter("Date");
         
         DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
         Date date;
         
         int day = 0;
         try {
            date = df.parse(inputDate);
            Calendar cal = Calendar.getInstance();
            cal.setTime(date);
            
            day = cal.get(Calendar.DAY_OF_WEEK); // 요일을 숫자로 표기
//            System.out.println(day);

         } catch (ParseException e) {
            e.printStackTrace();
         }
         
         out.print(day);
         System.out.println(day);
         
         
         
//         Gson gson = new Gson();
//         String result = gson.toJson(list);
//
//         response.setCharacterEncoding("UTF-8");
//         response.getWriter().print(result);
         
      
   
   }

}