<%@page import="com.youthdew.model.CenterVO"%>
<%@page import="com.youthdew.model.SpaceListVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blog</title>
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
<link rel="stylesheet" type="text/css" href="styles/blog2.css">
<link rel="stylesheet" type="text/css" href="styles/blog_responsive.css">
<link rel="stylesheet" type="text/css" href="styles/newstyle.css">
<link rel="stylesheet" type="text/css" href="styles/tabstyle.css">



</head>
<body>

<div class="super_container">
	
    <!-- Header -->
	<div id="headers"></div>

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
												</select>ㅇㅇ
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



	 
						

				<!-- Sidebar -->
				<div class="col-lg-3">
					<div class="sidebar">
						
						<!-- Search -->
						<div class="sidebar_search">
							<form action="#" class="sidebar_search_form" id="sidebar_saerch_form">
								<input type="text" class="sidebar_search_input" placeholder="Keyword" required="required">
								<button class="sidebar_search_button">Search</button>
							</form>
						</div>

						<!-- Recent Posts -->
						<div class="recent_posts">
							<div class="sidebar_title"><h4>Recent Posts</h4></div>
							<div class="sidebar_list">
								<ul>
									<li><a href="#">Featured Product</a></li>
									<li><a href="#">Standard Post</a></li>
									<li><a href="#">Gallery Post</a></li>
									<li><a href="#">Video Post</a></li>
									<li><a href="#">Audio Post</a></li>
								</ul>
							</div>
						</div>

						<!-- Categories -->
						<div class="categories">
							<div class="sidebar_title"><h4>Categories</h4></div>
							<div class="sidebar_list">
								<ul>
									<li><a href="#">News</a></li>
									<li><a href="#">Hotel</a></li>
									<li><a href="#">Vacation</a></li>
								</ul>
							</div>
						</div>

						

						<!-- Special Offer -->
						<div class="special_offer">
							<div class="background_image" style="background-image:url(images/special_offer.jpg)"></div>
							<div class="special_offer_container text-center">
								<div class="special_offer_title">Special Offer</div>
								<div class="special_offer_subtitle">Family Room</div>
								<div class="button special_offer_button"><a href="#">Book now</a></div>
							</div>
						</div>

					</div>
				</div>

			</div>
		</div>
	</div>

	
	
   <!-- Footer -->

	<footer id="footers"></footer>

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
<script src="js/space.js"></script>



</body>
</html>