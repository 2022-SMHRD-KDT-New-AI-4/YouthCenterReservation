<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>청년이슬 회원가입</title>
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

}

#Join2{
	position:relative;
	left:25%;
	
}

/* 생년월일 placeholder */
input[type='date']::before {
  content: attr(data-placeholder);
  width: 100%;
}

input[type='date']:focus::before,
input[type='date']:valid::before {
  display: none;
}
/* 생년월일 placeholder */



</style>
</head>
<body>

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
								<div  class="home_title">회원가입</div>
								<div class="booking_form_container">
								  






				<form action="JoinService2" method="post">
					<table id="Join2" style="width: 550px; height: 430px;">
					 <tbody>
						   <tr>
							 <td ><input type="text" id="id" name="user_id" class="booking_input booking_input_b" placeholder="아이디" autofocusmaxlength="20" style="width:400px;height:60px;font-size:15px;">
						   <br>
						   </td>
						   <td><button type="button" onclick="idCheck()" style="width:100px;height:50px" class="booking_button trans_200" id="double"> 중복확인</button></td>
							</tr>
						   <tr id="result" style="font-size:18px;color:rgb(225, 247, 254);"></tr>
						   
							
						   <tr>
							 <td style="; color:white;"><input id="named" name="user_name" class="booking_input booking_input_b" type="text"  placeholder="이름" autofocusmaxlength="20" style="width:400px;height:60px;font-size:15px;"></td>
						   </tr>
							
						   <tr>
							 <td style=" color:white;"><input id="birth" name="user_birthdate" class="booking_input booking_input_b" type="date" data-placeholder="생년월일" required
								aria-required="true" autofocusmaxlength="20" style="width:400px;height:60px;font-size:15px;"></td>
							</tr>
							
						   <tr>
							 <td style="color:white;"><input id="tel" name="user_phone" class="booking_input booking_input_b" type="text"  placeholder="전화번호" autofocusmaxlength="20" style="width:400px;height:60px;font-size:15px;"></td>
						   </tr>
							
						   <tr>
						   <td><button type="submit" autofocusmaxlength="20" class="booking_button trans_200" style="height:50px">회원가입</button></td>
						   </tr>
						 </tbody>
						   </table>
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



<script type="text/javascript">
	function idCheck(){
		 //jQuery에서 선택자역할
		 var id = $("#id").val();
		 
		 $.ajax({
			 url : "IDCheckService?user_id="+id,
			 success : function(data){
				  if(data == "success"){
					   $("#result").html("<span>사용가능한 아이디입니다.<span>");
				  }else if(data == "fail"){
					   $("#result").html("<span>중복된 아이디입니다.<span>");
				  }
			 }
		 });
		 
		 
	}
</script>
</body>
</html>