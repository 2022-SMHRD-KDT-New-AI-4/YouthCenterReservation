<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.youthdew.model.reservationInfoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.youthdew.model.reservationInfoDAO"%>
<%@page import="com.youthdew.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="login.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>나의 예약</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The River template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/animate.css">
<link href="plugins/jquery-datepicker/jquery-ui.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/myreserv.css">
<link rel="stylesheet" type="text/css" href="styles/blog_responsive.css">
<link rel="stylesheet" type="text/css" href="styles/newstyle.css">
<link rel="stylesheet" type="text/css" href="styles/linefont.css">
</head>
<body>

<%
MemberVO loginM = (MemberVO)session.getAttribute("loginM");

reservationInfoDAO dao = new reservationInfoDAO();
ArrayList<reservationInfoVO> list = (ArrayList<reservationInfoVO>)dao.reservationSelect(loginM.getUser_id());   
%>
<div class="super_container">
   
   <!-- Header -->

   <header id="headers"></header>

   <!-- Home -->

   <div class="home">
      <div class="background_image" style="background-image:url(https://www.youthcenter.go.kr/framework/filedownload/getImage.do?filePathName=K43kYCzEpw54N3DsTLz6bCbqLMNkmNrFX8SJ2a%2F8F9pB7HUHHtIbNJnpKz1TxX7%2FtWBDU34mAyiLcA53hoq2zQ%3D%3D)"></div>
      <div class="home_container">
         <div class="container">
            <div class="row">
               <div class="col">
                  <div class="home_content text-center">
                     <div class="home_title">마이페이지</div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- Main -->

   <div class="blog">
      <div class="container">
         <div class="row">

                <div class="col-lg-3">
                    
                <!-- Sidebar -->
               <div class="sidebar">
                  <!-- 나의 정보 -->
                  <div class="recent_posts">
                     <div class="sidebar_title"><a hred="mypage.jsp"><h3>마이페이지</h3></a></div>
                     <div class="sidebar_list">
                     <ul>
                        <li><a href="mypage.jsp"> - 나의 정보</a></li> <!-- 나의 예약 -->
                        <br>
                        <br>
                        <li><a href="myReservation.jsp"> - 나의 예약</a></li> <!-- 즐겨 찾기 -->
                        <br>
                        <br>
                        <li><a href="bookmark.jsp"> - 나의 공간</a></li> <!-- 나의 공간 -->
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                     </ul>
                     </div>
                     <div class="sidebar_lastinfo">
                        <div><font size="1">광주동구예술길31-15 3~4, 7층</font></div>
                        <div><font size="1">스마트인재개발원</font></div>
                        <div><font size="1">대표전화:062-655-3506</font></div>
                     </div>
                  </div>
               </div>
            </div>

            <!-- User_info -->
            <div class="col-lg-9">
               <div class="blog_posts">
                  <div class="user_info"><h4>예약확인/취소</h4></div>
                  <div>
                     <hr>
                  </div>
                        <br>
                  <div class="user_info_cond">
                     <br>
                     <h3 id="user_name"><%=loginM.getUser_name()%> 님의 최근 예약 내역입니다.</h3>
                     <br>
                  </div>
                  <br>
                  <div>
                     <table class="res_search_table">
                        <tr id="res_search_table_col">
                           <td>번호</td>
                           <td>센터 명</td>
                           <td>공간 명</td>
                           <td>예약 일자</td>
                           <td>예약 상태</td>
                           <td>예약 취소</td>
                           <td>신청일자</td>
                           <td>리뷰</td>
                        </tr>
                        <%for (int i =0;i<list.size();i++){%>
                        <tr id="res_search_table_col">
                           <td><%=i+1%></td>
                           <td><%=list.get(i).getCenter_name() %></td>
                           <td><%=list.get(i).getShared_space_name()%></td>
                           <td><%=list.get(i).getReserv_date().substring(0, 10)%>
								<br><%=list.get(i).getUse_time().substring(0,5)%><%=list.get(i).getUse_time().substring(list.get(i).getUse_time().lastIndexOf("~"))%>                       
                           </td>
                           <td>예약상태</td>
                           <td>
                           <%
                           		LocalDate now1 = LocalDate.now();
                           		String formatedNow1 = now1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                           		
                           		String[] revArrDate1 = (list.get(i).getReserv_date().substring(0, 10)).split("-");
                       			String[] revNowDate1 = formatedNow1.split("-");
                       			
                       				// 1 이후 날짜
                                    // -1 이전 날짜
                                    // 0 동일날짜
                       				int revYY = Integer.parseInt(revArrDate1[0]);
                       				int revMM = Integer.parseInt(revArrDate1[1]);
                       				int revDD = Integer.parseInt(revArrDate1[2]);
                       				
                       				LocalDate date3 = LocalDate.of(revYY, revMM, revDD);
                           			
                       				int nowYY = Integer.parseInt(revNowDate1[0]);
                       				int nowMM = Integer.parseInt(revNowDate1[1]);
                       				int nowDD = Integer.parseInt(revNowDate1[2]);
                       				LocalDate date4 = LocalDate.of(nowYY, nowMM, nowDD);
                       				
                           			int resultC = date3.compareTo(date4);                           		
                           %>
                           		<% if(resultC < 0) {%>                       				
                    				취소 불가
                           		<% } else { %>
                           			<a href="deleteReserveService?reserv_seq=<%=list.get(i).getReserv_seq()%>">취소</a>
                           		<%} %>
                           </td>
                           <td><%=list.get(i).getApply_date() %></td>
                           <td>
                           		<% 
                           	        LocalDate now = LocalDate.now();
	                           		String formatedNow = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
	                           		
	                           		String[] revArrDate = (list.get(i).getReserv_date().substring(0, 10)).split("-");
                           			String[] revNowDate = formatedNow.split("-");
                           			
                           				
                           				// 1 이후 날짜
	                                    // -1 이전 날짜
	                                    // 0 동일날짜
                           				int revY = Integer.parseInt(revArrDate[0]);
                           				int revM = Integer.parseInt(revArrDate[1]);
                           				int revD = Integer.parseInt(revArrDate[2]);
                           				
                           				LocalDate date1 = LocalDate.of(revY, revM, revD);
                               			
                           				int nowY = Integer.parseInt(revNowDate[0]);
                           				int nowM = Integer.parseInt(revNowDate[1]);
                           				int nowD = Integer.parseInt(revNowDate[2]);
                           				LocalDate date2 = LocalDate.of(nowY, nowM, nowD);
                           				
                               			int result = date1.compareTo(date2);
                               		
                                 %>
                                 <%if(result < 0) {%>
                                 	<a href="Review.jsp?shared_space_seq=<%=list.get(i).getShared_space_seq()%>&center_name=<%=list.get(i).getCenter_name() %>&shared_space_name=<%=list.get(i).getShared_space_name()%>&user_id=<%=loginM.getUser_id()%>">리뷰</a>
                                 <%} else{ %>
                                 	<% out.println("이용 전"); %>
                                 <%} %>
                                 </td>
                        </tr>
                        <%} %>
                     </table>
                  </div>
               </div>
            </div>
            

         </div>
      </div>
   </div>

   <!-- Footer -->

   <footer id="footers"></footer>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="styles/bootstrap-4.1.2/popper.js"></script>
<script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.3.4/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/jquery-datepicker/jquery-ui.js"></script>
<script src="js/blog.js"></script>
<script src="js/listevent.js"></script>
<script src="js/htmlplus.js"></script>
</body>
</html>