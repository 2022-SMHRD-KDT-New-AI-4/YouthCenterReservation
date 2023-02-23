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
<link rel="stylesheet" type="text/css" href="styles/blog.css">
<link rel="stylesheet" type="text/css" href="styles/blog_responsive.css">

<style>
    /* 지역리스트 */
	#menuitems{
		background-color: white;
	}
	.locallist{
		display: none;
	}

	li:hover {
		background-color: rgb(183, 186, 231) !important;
	}

	/* 메인검색 */
	#lolist,#ctlist{
		color: rgb(255,163,123);
	}
</style>


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
								<form action="#" class="booking_form" id="booking_form">
									<div class="d-flex flex-xl-row flex-column align-items-start justify-content-start">
										<div class="booking_input_container d-flex flex-row align-items-start justify-content-start flex-wrap">
											<div>
												<select name="" id="lolist" class="booking_input booking_input_a">
													<option value="">지역(시/도)</option>
													<option value="">서울</option>
													<option value="">경기/인천</option>
													<option value="">대구</option>
													<option value="">경상</option>
													<option value="">강원</option>
													<option value="">충청</option>
													<option value="">광주/전라</option>
													<option value="">제주</option>
												</select>
											</div>
											<div>
												<select name="" id="ctlist" class="booking_input booking_input_a">
													<option value="">센터명</option>
													<option value="">이건</option>
													<option value="">DB에서</option>
													<option value="">가져와야</option>
													<option value="">합니다</option>
												</select>
											</div>
				
										</div>
										<div><button class="booking_button trans_200">예약하기</button></div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- Blog -->

	<div class="blog">
		<div class="container">
			<div class="row">
				
				<!-- Blog Posts -->
				<div class="col-lg-9">
					<div class="blog_posts">
						
						<!-- Blog Post -->
						<div class="blog_post">
							<div class="blog_post_image">
								<img src="images/blog_1.jpg" alt="">
								<div class="blog_post_date"><a href="#">Oct 20, 2018</a></div>
							</div>
							<div class="blog_post_content">
								<div class="blog_post_title"><a href="#">Top dream destinations</a></div>
								<div class="blog_post_info">
									<ul class="d-flex flex-row align-items-start justify-content-start flex-wrap">
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_4.png" alt="">
											<a href="#">News</a>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_5.png" alt="">
											<a href="#">21 Likes</a>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_6.png" alt="">
											<a href="#">602 views</a>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_7.png" alt="">
											<a href="#">1 min</a>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_8.png" alt="">
											<a href="#">3 comments</a>
										</li>
									</ul>
								</div>
								<div class="blog_post_text">
									<p>Vivamus auctor mi eget odio feugiat, quis aliquet velit ornare. Integer egestas sit amet neque sed elementum. Fusce ut turpis felis. Etiam pretium pharetra augue, ac porttitor dolor consequat eget. Cras tempor suscipit enim vehicula ultrices. Mauris sed orci blandit.</p>
								</div>
								<div class="button blog_post_button"><a href="#">Read More</a></div>
							</div>
						</div>

						<!-- Blog Post -->
						<div class="blog_post">
							<div class="blog_post_image">
								<img src="images/blog_2.jpg" alt="">
								<div class="blog_post_date"><a href="#">Oct 20, 2018</a></div>
							</div>
							<div class="blog_post_content">
								<div class="blog_post_title"><a href="#">How to book your stay</a></div>
								<div class="blog_post_info">
									<ul class="d-flex flex-row align-items-start justify-content-start flex-wrap">
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_4.png" alt="">
											<a href="#">News</a>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_5.png" alt="">
											<a href="#">21 Likes</a>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_6.png" alt="">
											<a href="#">602 views</a>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_7.png" alt="">
											<a href="#">1 min</a>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_8.png" alt="">
											<a href="#">3 comments</a>
										</li>
									</ul>
								</div>
								<div class="blog_post_text">
									<p>Vivamus auctor mi eget odio feugiat, quis aliquet velit ornare. Integer egestas sit amet neque sed elementum. Fusce ut turpis felis. Etiam pretium pharetra augue, ac porttitor dolor consequat eget. Cras tempor suscipit enim vehicula ultrices. Mauris sed orci blandit.</p>
								</div>
								<div class="button blog_post_button"><a href="#">Read More</a></div>
							</div>
						</div>

						<!-- Blog Post -->
						<div class="blog_post">
							<div class="blog_post_image">
								<img src="images/blog_3.jpg" alt="">
								<div class="blog_post_date"><a href="#">Oct 20, 2018</a></div>
							</div>
							<div class="blog_post_content">
								<div class="blog_post_title"><a href="#">Perfect beach wedding</a></div>
								<div class="blog_post_info">
									<ul class="d-flex flex-row align-items-start justify-content-start flex-wrap">
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_4.png" alt="">
											<a href="#">News</a>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_5.png" alt="">
											<a href="#">21 Likes</a>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_6.png" alt="">
											<a href="#">602 views</a>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_7.png" alt="">
											<a href="#">1 min</a>
										</li>
										<li class="d-flex flex-row align-items-center justify-content-start">
											<img src="images/icon_8.png" alt="">
											<a href="#">3 comments</a>
										</li>
									</ul>
								</div>
								<div class="blog_post_text">
									<p>Vivamus auctor mi eget odio feugiat, quis aliquet velit ornare. Integer egestas sit amet neque sed elementum. Fusce ut turpis felis. Etiam pretium pharetra augue, ac porttitor dolor consequat eget. Cras tempor suscipit enim vehicula ultrices. Mauris sed orci blandit.</p>
								</div>
								<div class="button blog_post_button"><a href="#">Read More</a></div>
							</div>
						</div>

						<!-- Page Nav -->
						<div class="page_nav">
							<ul class="d-flex flex-row align-items-start justify-content-start">
								<li class="active"><a href="#">01.</a></li>
								<li><a href="#">02.</a></li>
								<li><a href="#">03.</a></li>
							</ul>
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
	<footer class="footer">
		<div class="copyright">
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Made by True이슬 : 이슬이 이민지 송소라 강정진 유성훈 김응진
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

<script>

	$('.book_button').hover(function(){
	  if($(".locallist").is(":visible")){
					  $(".locallist").css("display","none");
				  }
				  else{
					  $(".locallist").css("display","block");
				  }
	});
  
	$(document).ready( function() {

$("#headers").load("menubar.jsp");  // 원하는 파일 경로를 삽입하면 된다
// $("#footers").load("common/footer.html");  // 추가 인클루드를 원할 경우 이런식으로 추가하면 된다

});
  
  </script>
</body>
</html>