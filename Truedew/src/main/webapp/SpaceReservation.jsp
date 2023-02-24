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
<link rel="stylesheet" type="text/css" href="styles/blog.css">
<link rel="stylesheet" type="text/css" href="styles/blog_responsive.css">
<link rel="stylesheet" type="text/css" href="styles/newstyle.css">



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

	<!--청년센터 공유공간 리스트  -->
	<% ArrayList<SpaceListVO> list=(ArrayList<SpaceListVO>)request.getAttribute("list");%>
		 
	<%for (int i = 0; i < list.size();i++) {%>
	
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
		 		<p><%=list.get(i).getPersons() %></p>
				<img src=<%=list.get(i).getSpace_info() %>>
			</div>
			<div class="button blog_post_button"><a href="#">Read More</a></div> 
			<%} %>
	
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
<script src="js/listevent.js"></script>
<script src="js/htmlplus.js"></script>
<script>


	function categoryChange(e) {
		var lolist_seoul = ["강북청년창업마루", "서울청년센터 성동오랑", "서울청년센터 광진오랑", "마포오랑","동대문오랑","서울청년센터 관악 오랑 청년문화공간","서울청년센터 서초 오랑","서울청년센터 노원오랑","서울청년센터강동오랑","서울청년센터은평오랑","서울청년센터금천오랑"];
		var lolist_incheon = ["인천청년센터 서구1939", "인천 청년공간 유유기지"];
		var lolist_gyeonggi = ["의정부시 청년센터청년공감터", "연천군청년센터","청년스테이션","양주시청년센터"];
		var lolist_daegu = ["대구광역시 동구청년센터 the꿈", "수성구청년센터", "대구광역시청년센터공감그래", "대구광역시청년센터다온나그래", "대구광역시청년센터활동그래"];
		var lolist_ulsan = ["울산광역시청년센터"];
		var lolist_gyeongsan = ["상주시 청년센터 들락날락", "김천시 청년센터", "거제청년센터 이룸", "양산시 청년센터 청담","통영시청년센터통영청년세움","청년온나"];
		var lolist_gwangwon = ["삼척청년센터", "강릉시청년센터 두루"];
		var lolist_chungcheong = ["당진청년센터나래","천안청년센터 불당이음"];
		var lolist_sejong =["세종시청년센터"];
		var lolist_gwangju = ["광주청년센터"];
		var lolist_jeonla = ["청년이음전주", "군산시청년뜰청년센터창업센터","보성군 청년센터", "영광군 청년센터 청춘공방", "진도군 청년센터", "청춘이랑"];
		var lolist_jeju = ["제주청년센터", "청년다락 1호점", "청년다락 2호점", "청년다락3호점", "청년다락4호점"];
		
		var target = document.getElementById("ctlist");
	
		if(e.value == "서울") var d = lolist_seoul;
		else if(e.value == "경기") var d = lolist_gyeonggi;
		else if(e.value == "인천") var d = lolist_incheon;
		else if(e.value == "대구") var d = lolist_daegu;
		else if(e.value == "울산") var d = lolist_ulsan;
		else if(e.value == "경상") var d = lolist_gyeongsanc;
		else if(e.value == "강원") var d = lolist_gwangwon;
		else if(e.value == "충청") var d = lolist_chungcheong;
		else if(e.value == "세종") var d = lolist_sejong;
		else if(e.value == "광주") var d = lolist_gwangju;
		else if(e.value == "전라") var d = lolist_jeonla;
		else if(e.value == "제주") var d = lolist_jeju;
	
		target.options.length = 0;
	
		for (x in d) {
			var opt = document.createElement("option");
			opt.value = d[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}
	}

</script>

</body>
</html>