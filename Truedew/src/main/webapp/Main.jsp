<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청년이슬</title>
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
<link rel="stylesheet" type="text/css" href="styles/linefont.css">

<style>

#container_d-flex {
	width:1100px;
	margin-left: 150px;
}
#reserve {
	margin:auto;
}
.home_title{
text-align: center;
}
#logo_main{
width: 40%;
margin: auto; 
    display: block; 
}
</style>

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
                              <div class="home_title"><img id="logo_main" src="./images/truelog_main.png"></div>
                              <div class="booking_form_container">
                                 <form action="SpaceList" class="booking_form" name="insertForm" onsubmit="return formCheck();">
                                    <div class="d-flex flex-xl-row flex-column align-items-start justify-content-start">
                                       <div class="booking_input_container d-flex flex-lg-row flex-column align-items-start justify-content-start" id="container_d-flex">
                                             <div align="left">
                                                <!-- <input type="text" class="booking_input booking_input_b" placeholder="지역(시/도)" required="required"> -->
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
                                                <!-- select option 선택 시 밑에 있는 센터명 정보 필터링해서 값 가져오기 -->
                                             </div>
                                          <div align="center">
                                             <!-- <input type="text" class="booking_input booking_input_b" placeholder="센터명" required="required"> -->
                                             <select name="center_list" id="ctlist" class="booking_input booking_input_b">
												<option>센터명</option>															
											 </select>
                                          
                                          </div>
                                          <div align="right"> <input id="reserve" type="submit" class="booking_button trans_200" value="예약하기"></div>
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
   <!--테스트 수정  -->
   
   <!-- 달력 -->
   <!-- <div><input type="text" class="datepicker booking_input booking_input_a booking_out" placeholder="Check out" required="required"></div> -->


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
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="js/custom.js"></script>
<script src="js/listevent.js"></script>
<script src="js/space.js"></script>
<script src="js/htmlplus.js"></script>
<script src="js/review.js"></script>

</body>
</html>