<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The River</title>
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
<link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<link rel="stylesheet" type="text/css" href="styles/newstyle.css">

</head>
<body>

<div class="super_container">
	

	<div id="headers"></div>
	
	

	<!-- Home -->

	<div class="home">
		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">
				
				<!-- Slide -->
				<div class="slide">
					<div class="background_image" style="background-image:url(https://www.youthcenter.go.kr/framework/filedownload/getImage.do?filePathName=K43kYCzEpw54N3DsTLz6bCbqLMNkmNrFX8SJ2a%2F8F9pB7HUHHtIbNJnpKz1TxX7%2FtWBDU34mAyiLcA53hoq2zQ%3D%3D)"></div>
					<div class="home_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_content text-center">
										<div class="home_title">청년공감 공유공간</div>
										<div class="booking_form_container">
											<form action="#" class="booking_form">
												<div class="d-flex flex-xl-row flex-column align-items-start justify-content-start">
													<div class="booking_input_container d-flex flex-lg-row flex-column align-items-start justify-content-start">
															<div>
																<!-- <input type="text" class="booking_input booking_input_b" placeholder="지역(시/도)" required="required"> -->
																<select name="local_do" id="lolist" class="booking_input booking_input_b" onchange="categoryChange(this)">
																	<option>지역(시/도)</option>
																	<option value="seoul">서울</option>
																	<option value="gyeonggi">경기/인천</option>
																	<option value="daegu">대구</option>
																	<option value="Gyeongsan">경상</option>
																	<option value="gwangwon">강원</option>
																	<option value="Chungcheong">충청</option>
																	<option value="gwangju">광주/전라</option>
																	<option value="jeju">제주</option>
																</select>
																<!-- select option 선택 시 밑에 있는 센터명 정보 필터링해서 값 가져오기 -->
															</div>
														<div>
															<!-- <input type="text" class="booking_input booking_input_b" placeholder="센터명" required="required"> -->
															<select name="center_list" id="ctlist" class="booking_input booking_input_b">
																<option>센터명</option>															
															</select>
														
														</div>
														<div><button class="booking_button trans_200">예약하기</button></div>
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
				
			</div>
			
		</div>
	</div>
	
	<!-- 달력 -->
	<!-- <div><input type="text" class="datepicker booking_input booking_input_a booking_out" placeholder="Check out" required="required"></div> -->


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
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="js/custom.js"></script>
<script src="js/listevent.js"></script>
<script src="js/htmlplus.js"></script>
<script>
function categoryChange(e) {
	var lolist_seoul = ["강북청년창업마루", "서울청년센터 성동오랑", "서울청년센터 광진오랑", "마포오랑","동대문오랑","서울청년센터 관악 오랑 청년문화공간","서울청년센터 서초 오랑","서울청년센터 노원오랑","서울청년센터강동오랑","서울청년센터은평오랑","서울청년센터금천오랑"];
	var lolist_gyeonggi = ["인천청년센터 서구1939", "인천청년공간유유기지", "의정부시 청년센터청년공감터", "연천군청년센터","청년스테이션","양주시청년센터"];
	var lolist_daegu = ["대구광역시 동구청년센터 the꿈", "수성구청년센터", "대구광역시청년센터공감그래", "대구광역시청년센터다온나그래", "대구광역시청년센터활동그래"];
	var lolist_Gyeongsan = ["울산광역시청년센터", "상주시 청년센터 들락날락", "김천시 청년센터", "거제청년센터 이룸", "양산시 청년센터 청담","통영시청년센터통영청년세움","청년온나"];
	var lolist_gwangwon = ["삼척청년센터", "강릉시청년센터 두루"];
	var lolist_Chungcheong = ["세종시청년센터", "당진청년센터나래","천안청년센터 불당이음"];
	var lolist_gwangju = ["청년이음전주", "군산시청년뜰청년센터창업센터","보성군 청년센터", "영광군 청년센터 청춘공방", "진도군 청년센터", "청춘이랑","광주청년센터"];
	var lolist_jeju = ["제주청년센터", "청년다락1호점", "청년다락2호점", "청년다락3호점", "청년다락4호점"];
	
	var target = document.getElementById("ctlist");

	if(e.value == "seoul") var d = lolist_seoul;
	else if(e.value == "gyeonggi") var d = lolist_gyeonggi;
	else if(e.value == "daegu") var d = lolist_daegu;
	else if(e.value == "Gyeongsan") var d = lolist_Gyeongsanc;
	else if(e.value == "gwangwon") var d = lolist_gwangwon;
	else if(e.value == "Chungcheong") var d = lolist_Chungcheong;
	else if(e.value == "gwangju") var d = lolist_gwangju;
	else if(e.value == "jeju") var d = lolist_jeju;

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