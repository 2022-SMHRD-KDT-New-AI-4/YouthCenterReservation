<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" type="text/css" href="styles/newstyle.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="super_container">
	
	<!-- Header -->
	<header id="headers"></header>


	<!-- Home -->
	<div class="home" id="homehome">
		<div class="background_image" id="bg_img" style="background-image:url(https://www.youthcenter.go.kr/framework/filedownload/getImage.do?filePathName=K43kYCzEpw54N3DsTLz6bCbqLMNkmNrFX8SJ2a%2F8F9pB7HUHHtIbNJnpKz1TxX7%2FtWBDU34mAyiLcA53hoq2zQ%3D%3Dking.jpg)"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content text-center"><br><br><br><br><br><br><br><br><br><br><br><br>
							
							<div class="booking_form_container">
								<form action="#" class="booking_form" id="booking_form">
									<div class="d-flex flex-xl-row flex-column align-items-start justify-content-start">
										<div class="booking_input_container d-flex flex-row align-items-start justify-content-start flex-wrap" id="res_search">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	<div class="home">
		
		<div class="home_container" style="color:black">
			
				
						<div class="home_content text-center">
							<div class="home_title" style="color:black" margin="text-center;" >로그인</div>
							
									<br>
			<br>
			<br>
			<form action="loginService_gen" method="post">
				<div><input name="user_id" type="text" placeholder="아이디를 입력하세요" autofocusmaxlength="20" style="width:600px;height:70px;font-size:30px;"></div><br>
				<div><input name="user_pw" type="password" placeholder="비밀번호를 입력하세요" autofocusmaxlength="20" style="width:600px;height:70px;font-size:30px;"></div><br>
				<div><input type="submit" value="로그인" class="button fit" autofocusmaxlength="20" style="width:600px;height:70px;font-size:30px;"></div>
			</form>
        <br><br><br><br><br><br><br><br><br><br>
        
        
        <p style="font-size : 30px; color:white">계정이 없으신가요 ? <a href="join.jsp" style="color:skyblue">회원가입</a></p>
        <script>
								
	
     // 메뉴바 import 시작

        async function fetchHtmlAsText(url) {
            return await (await fetch(url)).text();
            }

        async function importPage(target) {
            document.querySelector('#' + target).innerHTML = await fetchHtmlAsText(target + '.jsp');
            }

        importPage('menubar');

        // 메뉴바 import 끝
        </script>
        </div>
        <div class="social-login">
          <div class="clearfix"></div>
          
        </div>
      </div>
    </div>
  </div>
</div>

	<!-- Blog -->
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
<script src="js/listevent.js"></script>
<script src="js/blog.js"></script>
<script src="js/htmlplus.js"></script>
</body>
</html>