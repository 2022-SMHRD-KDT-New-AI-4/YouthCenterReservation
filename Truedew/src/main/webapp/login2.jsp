<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
body {
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
  }

.container {
    padding: 80px 120px;
  }




.clearfix {
clear: both
}

p {
text-align:center;
}
</style>
</head>
<body>        
 <div id = "menubar">
 <br><br><br><br><br><br><br><br><br><br><br><br>
			<p style="font-size : 30px;">로그인</p>
      </div>
      <!-- 네이버 로고버튼 -->
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a id="naverIdLogin_loginButton" href="javascript:void(0)">
                  <img src="./네이버.png" width="500" height="400" id="naver">
              </a>
      
        <!-- 네이버 스크립트 -->
        <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
        
        <script>
        // callbackUrl = 메인페이지 , 클라이언트 아이디 바꾸지말기. 
        var naverLogin = new naver.LoginWithNaverId(
                {
                    clientId: "LlSvD47T4y2jbzBt5MZ3", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
                    callbackUrl: "http://localhost:8081/gd/main2.jsp", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
                    isPopup: false,
                    callbackHandle: true
                    
                }
            );	
        
        naverLogin.init();
        </script>
        <!-- 카카오 로그인 버튼 -->
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a onclick="kakaoLogin();" href="javascript:void(0)">
                  <img src="./카카오2.png" width="500" height="400" id="kakao">
              </a>
        
        <!-- 카카오 로그인 스크립트 -->
        <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
        <script>
            window.Kakao.init('1a6f86c5de53b01691eddf232e3036c8');
    
            function kakaoLogin() {
            	callbackUrl: "http://localhost:8081/gd/main2.jsp" // 로그인 후 callback할 사이트 
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="login.jsp">
                  <img src="./일반계정.png" width="500" height="400" id="ID">
        </a>
        <br>
        <br>
        <br>
        <br>
        
        <p style="font-size : 30px;">계정이 없으신가요 ? <a href="join.jsp">회원가입</a></p>
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
</body>
</html>