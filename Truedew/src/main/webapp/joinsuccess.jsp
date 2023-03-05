<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>회원가입 완료</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The River template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
<link rel="stylesheet" type="lllltext/css" href="plugins/OwlCarousel2-2.3.4/animate.css">
<link href="plugins/jquery-datepicker/jquery-ui.css" rel="stylesheet" type="text/css">
<link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<link rel="stylesheet" type="text/css" href="styles/newstyle.css">
<link rel="stylesheet" type="text/css" href="styles/linefont.css">

<style>

#logintitle{
	position:relative;
	bottom:20%;
    background-color: rgba(0, 0, 0, 0.4);
    height:500px;
    
    border: 2px solid rgb(225, 247, 254);

}

#jointitle{
    margin-top:15%;
}

</style>
</head>
<body>
							<% 
	// getParameter : 패킷에 포함된 파라미터 가지고 올 때 사용
	// getAttribute : 특정 영역에 저장된 값 가지고 올 때 (request) -> Object로 반환
	String user_id = (String)request.getAttribute("user_id"); %>



<div class="super_container">
	

	
	<header id="headers"></header>

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
							 <div id="logintitle" class="home_content text-center">
								<div id="jointitle" class="home_title" style="font-size:60px">
                                    <%=user_id %>님의 회원가입이<br>
                                    완료되었습니다
                                </div>
								<div class="booking_form_container">
								  


				 <div style="font-size:20px">  
                            <a style="color:rgb(6,163,218)" href="login.jsp">로그인하기</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a style="color:rgb(6,163,218)" href="Main.jsp">메인페이지로</a>

                 </div>

				<br>


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
<script src="js/htmlplus.js"></script>




</body>
</html>
	
						