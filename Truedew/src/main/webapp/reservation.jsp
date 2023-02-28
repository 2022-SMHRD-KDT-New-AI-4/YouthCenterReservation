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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://cdn.materialdesignicons.com/2.2.43/css/materialdesignicons.min.css">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="styles/common.css">
<link rel="stylesheet" type="text/css" href="styles/white-theme.css">
<link rel="stylesheet" type="text/css" href="styles/chkboxstyle.css">


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
								<form action="SpaceList" class="booking_form" id="booking_form" name="insertForm" onsubmit="return formCheck();">
									<div class="d-flex flex-xl-row flex-column align-items-start justify-content-start">
										<div class="booking_input_container d-flex flex-row align-items-start justify-content-start flex-wrap">
											<div>
												<select name="local_do" id="lolist" class="booking_input booking_input_b" onchange="categoryChange(this)">
													<option value="">지역(시/도)</option>
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
												<option value="">센터명</option>															
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

	<!-- 캘린더  -->
	<div id='calendar'></div>
	<div id='selectedDate'></div>
	
	
	<div class="col-2">
	<form action="" method="get">
		<div class="box-group solid border">
			<input type="checkbox" class="check_re" name="checkbox_solid_border" id="checkbox_solid_border_1" />
			<label for="checkbox_solid_border_1">9:00~10:00</label>
		</div>
		<div class="box-group solid border">
			<input type="checkbox" class="check_re" name="checkbox_solid_border" id="checkbox_solid_border_2" />
			<label for="checkbox_solid_border_2">10:00~11:00</label>
		</div>
		<div class="box-group solid border">
			<input type="checkbox" class="check_re" name="checkbox_solid_border" id="checkbox_solid_border_3" />
			<label for="checkbox_solid_border_3">11:00~12:00</label>
		</div>
		<div class="box-group solid border">
			<input type="checkbox" class="check_re" name="checkbox_solid_border" id="checkbox_solid_border_4" />
			<label for="checkbox_solid_border_4">12:00~13:00</label>
		</div>
		<div class="box-group solid border">
			<input type="checkbox" class="check_re" name="checkbox_solid_border" id="checkbox_solid_border_5" />
			<label for="checkbox_solid_border_5">13:00~14:00</label>
		</div>
		<div class="box-group solid border">
			<input type="checkbox" class="check_re" name="checkbox_solid_border" id="checkbox_solid_border_6" />
			<label for="checkbox_solid_border_6">14:00~15:00</label>
		</div>
		<div class="box-group solid border">
			<input type="checkbox" class="check_re" name="checkbox_solid_border" id="checkbox_solid_border_7" />
			<label for="checkbox_solid_border_7">15:00~16:00</label>
		</div>
		<div class="box-group solid border">
			<input type="checkbox" class="check_re" name="checkbox_solid_border" id="checkbox_solid_border_8" />
			<label for="checkbox_solid_border_8">16:00~17:00</label>
		</div>
		<div class="box-group solid border">
			<input type="checkbox" class="check_re" name="checkbox_solid_border" id="checkbox_solid_border_9" />
			<label for="checkbox_solid_border_9">17:00~18:00</label>
		</div>
		<input id="checkRes" type="button" value="예약하기">
	</form>
		
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
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.4/index.global.min.js'></script>
<script>
	
	//연속된 시간 선택 안할 시 경고창 띄우기
	var checkList = [];
	var isCheck = false;
	
	$('#checkRes').click(function(){
		isCheck = false;
		checkList = [];
		var checkBoxV = document.querySelectorAll(".check_re");
		
		for(var i = 0; i < checkBoxV.length; i++){
			if(checkBoxV[i].checked){
				var text = checkBoxV[i].getAttribute('id');
				checkList.push(text.substr(text.length - 1,text.length));
			}
		}
		
		for(var i = 0; i < checkBoxV.length - 1; i++){
			for(var j = i+1; j < checkBoxV.length; j++){
				var temp = checkList[i] - checkList[j];
				if(temp < 0){
					temp = temp * -1;
				}
				if(temp > 2){
					isCheck = true;
					break;
				}
			}
		}
		if(isCheck){
			alert("시간은 연속으로 예약 가능합니다.");
		}
		console.log(checkList);
	});
	
	
	//체크박스 3개 이상 선택시 경고창
	$(document).ready(function(){
		$("input[name='checkbox_solid_border']").on("click", function(){
			var cnt =$("input[name='checkbox_solid_border']:checked").length;
			
			if(cnt>3){
				$(this).prop("checked",false);
				alert("최대 3시간까지 예약 가능합니다.");
			}
			
			
			});
		});
	
	let calendar;
	let prevClickedDayEl; // 이전에 클릭한 날짜 요소
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		calendar = new FullCalendar.Calendar(calendarEl, {
			selectable : true,
			initialView : 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면 (기본 설정: 달)
			locale : 'ko', // 한국어 설정
			expandRows : true, // 화면에 맞게 높이 재설정
			height : '500px', // calendar 높이 설정 
			aspectRatio: 1.5,
			

			dateClick : function(info) {
				if (prevClickedDayEl) {
					prevClickedDayEl.style.backgroundColor = ''; // 이전에 클릭한 날짜의 배경색을 원래대로 되돌림
				}
				info.dayEl.style.backgroundColor = '#ffddff';
				prevClickedDayEl = info.dayEl; // 이전에 클릭한 날짜 요소를 현재 클릭한 날짜 요소로 업데이트
				
				// 선택한 날짜를 selectedDate 요소에 출력
				let selectedDateEl = document.getElementById('selectedDate');
				selectedDateEl.textContent = info.dateStr;
			}
		
		});
		calendar.render();
	});

</script>



</body>
</html>