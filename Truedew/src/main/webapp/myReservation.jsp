<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>

<div class="super_container">
	
	<!-- Header -->

	<header class="header">
		<div class="header_content d-flex flex-row align-items-center justify-content-start">
			<div class="logo"><a href="Main.jsp">청년이슬</a></div>
			<div class="ml-auto d-flex flex-row align-items-center justify-content-start">
				<nav class="main_nav">
					<ul class="d-flex flex-row align-items-start justify-content-start">
						<li class="active"><a href="mypage.jsp">마이페이지</a></li>
						<li><a href="Main.jsp">로그아웃</a></li>
						<li><img src="./images/paper-plane_2.png" alt="알림"></li>
					</ul>
				</nav>
				<div class="book_button"><a href="Main.jsp">검색하기</a></div>

				<!-- Hamburger Menu -->
				<div class="hamburger"><i class="fa fa-bars" aria-hidden="true"></i></div>
			</div>
		</div>
	</header>

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
							<div class="sidebar_title"><a hred="mypage.jspl"><h3>마이페이지</h3></a></div>
							<div class="sidebar_list">
							<ul>
								<li><a href="mypage.jsp"> - 나의 정보</a></li> <!-- 나의 예약 -->
								<br>
								<br>
								<li><a href="myReservation.jsp"> - 나의 예약</a></li> <!-- 즐겨 찾기 -->
								<br>
								<br>
								<li><a href="myFavor.jsp"> - 나의 공간</a></li> <!-- 나의 공간 -->
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
							<h4 id="user_name">홍길동 님의 최근 예약 내역입니다.</h4>
							<br>
							<div class="res_search_date">
								<input type="date" id="search_date_1" value="first">
								<input type="date" id="search_date_2" value="last">
								<button>조회</button>
							</div>
						</div>
						<br>
						<div>
							<table class="res_search_table">
								<tr id="res_search_table_col">
									<td>번호</td>
									<td>예약 번호</td>
									<td>센터 명</td>
									<td>공간 명</td>
									<td>예약 일자</td>
									<td>예약 상태</td>
									<td>예약 취소</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				

			</div>
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="footer_content">
			<div class="container">
			</div>
		</div>
		<div class="copyright">
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</div>
	</footer>
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
</body>
</html>