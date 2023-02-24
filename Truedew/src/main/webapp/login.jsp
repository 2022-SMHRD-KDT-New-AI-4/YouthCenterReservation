<%@page import="com.youthdew.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align : center;">
<%
   //loginM 키값이 지정되어있는 세션 값
   MemberVO loginM = (MemberVO)session.getAttribute("loginM");
   
%>
<div class="container">
	<a><h1>로그인</h1></a>
			<form action="loginService_gen" method="post">
				<div><input name="user_id" type="text" placeholder="아이디를 입력하세요" autofocusmaxlength="20" style="width:400px;height:50px;font-size:20px;"></div><br>
				<div><input name="user_pw" type="password" placeholder="비밀번호를 입력하세요" autofocusmaxlength="20" style="width:400px;height:50px;font-size:20px;"></div><br>
				<div><input type="submit" value="로그인" class="button fit" autofocusmaxlength="20" style="width:400px;height:50px;font-size:20px;"></div>
			</form>
			<!-- 네이버 로고버튼 -->
			<ul>
              <a id="naverIdLogin_loginButton" href="javascript:void(0)">
                  <img src="./zz_znaver.jpg" width="300" height="50">
              </a>
            
        </ul>
        
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
        <ul>
              <a onclick="kakaoLogin();" href="javascript:void(0)">
                  <span><img src="./zz_zkakao.png" width="300" height="50"></span>
              </a>
        </ul>
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
                         window.location.href='join.jsp' //리다이렉트 되는 코드
                         <% if(loginM == null) {%>
                         
                         <%}%>
                    },
                    fail: function(error) {
                        console.log(error);
                    }
                });
            }
            
        </script>
        <!-- 회원가입 , 아이디찾기 href="" -->
            <a href="join.jsp" onclick="JoinService2" href="javascript:void(0)"><font size="30px">회원가입 ㅣ </font></a>
    <a href="#" onclick="#" href="javascript:void(0)"><font size="30px">아이디찾기</font></a>
        </div>
</body>
</html>