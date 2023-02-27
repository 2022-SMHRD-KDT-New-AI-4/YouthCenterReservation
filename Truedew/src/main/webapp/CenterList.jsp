<%@page import="java.util.ArrayList"%>
<%@page import="com.youthdew.model.CenterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.html" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Booking</title>
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
<link rel="stylesheet" type="text/css" href="styles/booking.css">
<link rel="stylesheet" type="text/css" href="styles/booking_responsive.css">
<link rel="stylesheet" type="text/css" href="styles/newstyle.css">


</head>
<body>

<div class="super_container">
	<header id="headers"></header>
	

	<!-- Home -->

		<!-- Home -->

	<div class="home">
		<div class="background_image" style="background-image:url(https://www.youthcenter.go.kr/framework/filedownload/getImage.do?filePathName=K43kYCzEpw54N3DsTLz6bCbqLMNkmNrFX8SJ2a%2F8F9pB7HUHHtIbNJnpKz1TxX7%2FtWBDU34mAyiLcA53hoq2zQ%3D%3Dking.jpg)"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content text-center">
							<div class="home_title">공간예약</div>
							<div class="booking_form_container">
								<form action="SpaceList" class="booking_form" id="booking_form">
									<div class="d-flex flex-xl-row flex-column align-items-start justify-content-start">
										<div class="booking_input_container d-flex flex-row align-items-start justify-content-start flex-wrap">
											<div>
												<select name="local_do" id="lolist" class="booking_input booking_input_b" onchange="categoryChange(this)">
													<option>지역(시/도)</option>
													<option value="서울">서울</option>
													<option value="인천">인천</option>
													<option value="경기">경기</option>
													<option value="대구">대구</option>
													<option value="울산">울산</option>
													<option value="경상">경상</option>
													<option value="강원">강원</option>
													<option value="충청">충청</option>
													<option value="세종">세종</option>
													<option value="광주">광주</option>
													<option value="전라">전라</option>
													<option value="제주">제주</option>
												</select>
											</div>
											<div>
											<select name="center_list" id="ctlist" class="booking_input booking_input_b">
												<option>센터명</option>															
											 </select>
											</div>
				
										</div>
										<div>
										<input type="submit" class="booking_button trans_200" value="다시예약하기">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%--청년센터 리스트 --%>
	
	<% ArrayList<CenterVO> list = (ArrayList<CenterVO>)request.getAttribute("list"); %>
	<!-- Booking -->

	<div class="booking">
		<div class="container">
			<div class="row">
				<div class="col">
							
				<%for(int i=0; i< list.size();i=i+3){ %>
					<!-- Booking Slider -->
					<div > <!-- class="booking_slider_container" -->
						<div class="owl-carousel owl-theme booking_slider">
						
						<%for(int j=i;j<i+3;j++) {
							if(j<list.size()){%>
							<!-- Slide -->
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
								<div class="booking_link"><a href="booking.html">예약하기</a></div>
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
<%--		 
		 <div class="blog_post">
		 	<div class="blog_post_image">
		 		<img src=<%= list.get(i).getShared_space_pic()%> alt="">
		 	</div>
			<div class="blog_post_content">
		 		<div class="blog_post_title"><a href="#"><%=list.get(i).getShared_space_name() %></a></div>
		 		<div class="blog_post_info">
		 	</div>
		 	<div class="blog_post_text">
		 		<p><%=list.get(i).getLocal_do() %></p>
		 		<p>사용 가능 인원 : <%=list.get(i).getPersons() %></p>
				<p><%=list.get(i).getSpace_info() %></p>
			</div>
			<div class="button blog_post_button"><a href="#">예약하기</a></div> 
		</div>
			<%} %> --%>




							<!-- Slide -->
							<!-- <div class="booking_item">
								<div class="background_image" style="background-image:url(images/booking_2.jpg)"></div>
								<div class="booking_overlay trans_200"></div>
								<div class="booking_item_content">
									<div class="booking_item_list">
										<ul>
											<li>27 m² Patio</li>
											<li>Balcony with view</li>
											<li>Garden / Mountain view</li>
											<li>Flat-screen TV</li>
											<li>Air conditioning</li>
											<li>Soundproofing</li>
											<li>Private bathroom</li>
											<li>Free WiFi</li>
										</ul>
									</div>
								</div>
								<div class="booking_price">$120/Night</div>
								<div class="booking_link"><a href="booking.html">Deluxe Room</a></div>
							</div> -->

							<!-- Slide -->
							<!-- <div class="booking_item">
								<div class="background_image" style="background-image:url(images/booking_3.jpg)"></div>
								<div class="booking_overlay trans_200"></div>
								<div class="booking_item_content">
									<div class="booking_item_list">
										<ul>
											<li>27 m² Patio</li>
											<li>Balcony with view</li>
											<li>Garden / Mountain view</li>
											<li>Flat-screen TV</li>
											<li>Air conditioning</li>
											<li>Soundproofing</li>
											<li>Private bathroom</li>
											<li>Free WiFi</li>
										</ul>
									</div>
								</div>
								<div class="booking_price">$120/Night</div>
								<div class="booking_link"><a href="booking.html">Single Room</a></div>
							</div> -->





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
<script src="js/booking.js"></script>
<script src="js/listevent.js"></script>
<script src="js/htmlplus.js"></script>
<script src="js/space.js"></script>

</body>
</html>