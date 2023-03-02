<%@page import="com.youthdew.model.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="com.youthdew.model.MarkVO"%>
<%@page import="com.youthdew.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>청년이슬 나의공간</title>
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
<link rel="stylesheet" type="text/css" href="styles/booking.css">
<link rel="stylesheet" type="text/css" href="styles/booking_responsive.css">

<style>
#delete_mark{
		left:80%;
		width: 50px;
		height: 50px;

	}
</style>

</head>
<body>

<div class="super_container">
	
	<!-- selectMember.jsp로 이동 시 바로 회원정보(DB)를 불러와서 출력! -->
		<% 
			// 1. DB에 있는 회원정보 데이터 가져오기
			// -> DAO에 기능을 호출
			MemberVO loginM = (MemberVO)session.getAttribute("loginM");
			MemberDAO dao = new MemberDAO();
			List<MarkVO> list = dao.selectMark(loginM.getUser_id());
			
			%>

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
							<div class="sidebar_title"><a hred="mypage.html"><h3>마이페이지</h3></a></div>
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
							<h4 id="user_name"><%=loginM.getUser_name() %> 님의 즐겨찾기 내역입니다.</h4>
						</div>
						<br><br>
						<div>
						
						
							<% for(int i=0; i< list.size();i=i+3){ %>
					<!-- Booking Slider -->
					
					<div> <!-- class="booking_slider_container" -->
						<div class="owl-carousel owl-theme booking_slider">
						
						<%for(int j=i;j<i+3;j++) {
							if(j<list.size()){%>
							<!-- Slide -->
							<div>
							<div class="booking_item">
								<div class="background_image" style="background-image:url(<%=list.get(j).getCenter_pic()%>)"></div>
								
								<div class="booking_overlay trans_200"></div>
								<div class="booking_item_content">
									<div class="booking_item_list">
										<ul>
											<li><%=list.get(j).getCenter_tel()%></li>
											<li><%=list.get(j).getLocal_gu()%></li>
											<li><%=list.get(j).getCenter_runtime()%></li>
										</ul>
									</div>
								</div>
								<div class="booking_price"><%=list.get(j).getCenter_name()%></div>
								<!-- <div class="button button_1"><a href="reservation.jsp">예약하기</a></div> -->
								<div class="booking_link"><a href="reservation.jsp">예약하기</a></div>
							</div>
									<div id="delete_mark"><a href="deleteMarkService?center_id=<%=list.get(j).getCenter_id()%>&user_id=<%=loginM.getUser_id()%>"><img src="./images/ic_close.svg"></a></div>
							</div>
				
					<%} else{ %>
						<div class="booking_item"></div>
					<%} }%>
						</div>
					</div>
					<br><br>
				<%} %>
					
				
						</div>
								
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