<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>로그인</title>
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
<link rel="stylesheet" type="text/css" href="styles/newstyle.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="styles/linefont.css">
  
</head>
<body>

<div class="super_container">
	
	<!-- Header -->
	<header id="headers"></header>
	

	<!-- Menu -->

	
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
			<br>
			
              <a id="naverIdLogin_loginButton" href="javascript:void(0)">
                  <img src="images/네이버.png" width="450" height="450" id="naver">
              </a>
      
        <!-- 네이버 스크립트 -->
        <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
        
        <script>
        // callbackUrl = 메인페이지 , 클라이언트 아이디 바꾸지말기. 
        var naverLogin = new naver.LoginWithNaverId(
                {
                    clientId: "QP0QMGrvcWsotET3DOQ1", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
                    callbackUrl: "http://localhost:8081/Truedew/loginService_gen", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
                    isPopup: false,
                    callbackHandle: true
                    
                }
            );	
        
        naverLogin.init();
        </script>
        <!-- 카카오 로그인 버튼 -->
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a onclick="kakaoLogin();" href="javascript:void(0)">
                  <img src="images/카카오.png" width="450" height="450" id="kakao">
              </a>
        
        <!-- 카카오 로그인 스크립트 -->
        <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
        <script>
            window.Kakao.init('1a6f86c5de53b01691eddf232e3036c8');
    
            function kakaoLogin() {
            	callbackUrl: "http://localhost:8081/Truedew/Main.jsp" // 로그인 후 callback할 사이트 
                window.Kakao.Auth.login({
                    scope: 'profile_nickname, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                    success: function(response) {
                        console.log(response) // 로그인 성공하면 받아오는 데이터
                        window.Kakao.API.request({ // 사용자 정보 가져오기 
                            url: '/v2/user/me',
                            success: (res) => {
                                const kakao_account = res.kakao_account;
                                console.log(kakao_account)
                                
                            }
                        });
                          //리다이렉트 되는 코드
                         
                    },
                    fail: function(error) {
                        console.log(error);
                        window.location.href='join.jsp'
                    }
                });
            }

        </script>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="login.jsp">
                  <img src="images/일반계정.png" width="420" height="400" id="ID">
        </a>
        <br><br><br><br><br>
        
        
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
<script src="js/blog.js"></script>
<script src="js/listevent.js"></script>
<script src="js/htmlplus.js"></script>

</body>
</html>