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
  <style>
    #Join2 {
      position: absolute;
      left: 600px;
    }
    #id {
      position: relative;
      right: -61px;
    }
    #pw {
      position: relative;
      right : -10px;
    }
    #named {
      position: relative;
      right: -90px;
    }
    #birth {
      position: relative;
      right: -10px;
    }
    #tel {
      position: relative;
      right: -50px;
    }
    #double {
      position: relative;
      right: -56px;
      color : black;
    }
  </style>
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
							<div class="home_title" style="color:black" margin="text-center;" >회원가입</div>
							
									
			<br>
			<form action="JoinService2" method="post">
		 <table id="Join2" align="center" style="width: 800px; height: 500px;">
          <tbody>
                <tr>
                  <td style="font-size:40px; color:white;" align="left">아이디<input type="text" id="id" name="user_id" class="booking_input booking_input_b" placeholder="아이디를 입력하세요" autofocusmaxlength="20" style="width:400px;height:50px;font-size:15px;">
                <button type="button" onclick="idCheck()" autofocusmaxlength="20" style="width:100px;height:50px;font-size:20px; class="booking_button trans_200" id="double"> 중복확인</button></h1></td>
                </tr><br>
                <span id="result"></span>
                <tr>
                  <td><h2 style="font-size:40px; color:white;" align="left">비밀번호 <input id ="pw" name="user_pw" class="booking_input booking_input_b" type="password"  placeholder="비밀번호를 입력하세요" autofocusmaxlength="20" style="width:400px;height:50px;font-size:15px;"></td></h2>
                </tr><br>
                 
                <tr>
                  <td><h3 style="font-size:40px; color:white;" align="left">이름 <input id="named" name="user_name" class="booking_input booking_input_b" type="text"  placeholder="이름을 입력하세요" autofocusmaxlength="20" style="width:400px;height:50px;font-size:15px;"></td></h3>
                </tr>
                 
                <tr>
                  <td><h4 style="font-size:40px; color:white;" align="left">생년월일 <input id="birth" name="user_birthdate" class="booking_input booking_input_b" type="date"  placeholder="생일을 입력하세요" autofocusmaxlength="20" style="width:400px;height:50px;font-size:15px;"></td></h4>
                </tr>
                 
                <tr>
                  <td><h5 style="font-size:40px; color:white;" align="left">연락처 <input id="tel" name="user_phone" class="booking_input booking_input_b" type="text"  placeholder="전화번호를 입력하세요" autofocusmaxlength="20" style="width:400px;height:50px;font-size:15px;"></td></h5>
                </tr>
                 
                <tr>
                <td align="left"><button type="submit" autofocusmaxlength="20" class="booking_button trans_200" style="width:585px;height:70px;font-size:40px;" >회원가입</button></td>
                </tr>
              </tbody>
                </table>
           </form>
        <br><br><br><br><br><br><br><br><br><br>
        
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

     
     
     <script type="text/javascript">
     function idCheck(){
          //jQuery에서 선택자역할
          var id = $("#id").val();
          
          $.ajax({
              url : "IDCheckService?user_id="+id,
              success : function(data){
                   if(data == "success"){
                        $("#result").html("<span>사용가능한 아이디입니다.<span><br>");
                   }else if(data == "fail"){
                        $("#result").html("<span>중복된 아이디입니다.<span><br>");
                   }
              }
          });
          
          
     }
</script>

	  
</body>
</html>