<%@page import="com.youthdew.model.MessageVO"%>
<%@page import="java.util.List"%>
<%@page import="com.youthdew.model.MemberDAO"%>
<%@page import="com.youthdew.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menubar</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The River template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/animate.css">
<link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css"> -->
<link href="plugins/jquery-datepicker/jquery-ui.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/newstyle.css">
<style>
 	    #lettern{
        width:10px;
        height:10px;
        position: absolute;
        left:60%;
    }
    
        #truelogo{
        width: 107px !important;
		height: 50px !important;
    }
    
    #mylogo{
        width: 107px !important;
		height: 40px !important;
		}

</style>


</head>

<body>
    <%
	//loginM 키값이 지정되어있는 세션 값
	MemberVO loginM = (MemberVO)session.getAttribute("loginM");
    %>
	
                <!-- Header -->
        <div id="headers"></div>
    
        <header class="header">
            <div class="header_content d-flex flex-row align-items-center justify-content-start">
                <div id="truelogo"><a href="Main.jsp"><img id="mylogo" src="./images/truelog.png"></a></div>
                <div class="ml-auto d-flex flex-row align-items-center justify-content-start">
                    <nav class="main_nav">
                        <ul class="d-flex flex-row align-items-start justify-content-start">
    					
    					
    					<%if(loginM==null) { %>
                            <li><a href="join.jsp">회원가입</a></li>
                            <li><a href="login.jsp">로그인</a></li>
                        <%} else {
                            MemberDAO dao = new MemberDAO();
                            List<MessageVO> msglist = dao.readNotMessage(loginM.getUser_id());
                        	%>
                        <li><a href="mypage.jsp">마이페이지</a>	</li>					
                        <li><a href="LogoutService">로그아웃</a></li>
                        
                        <li><a id="msg" href="Message.jsp" onclick="window.open(this.href,'_blank','width=500px, height=500px, toolbars=no, scrollbars=no,left=1100, top=160'); return false;">
                                <div>
                                
                                	<% if(msglist.toString().equals("[]")) {%>
                                    <img  id="lettern" src="">
                                    <%} else {  %>
                                   <img  id="lettern" src="./images/letter-n.png">
                                   
                                    <%} %>
                                    <img src="./images/icon_8.png">
                                </div>
                                </a>
                        </li>
						<%} %>
                        
                        
                        </ul>
                    </nav>
                <div class="book_button">
                        <a href="#">검색하기</a>
                        <!-- <label for="collapsible"><span id="bookbtn">예약하기</span></label> -->
                    <!-- </ul> -->
                    <div class="locallist">
                    <ul id="menuitems">
						<li ><a href="#" onclick="local_click(this);">서울</a></li>
                        <li ><a href="#" onclick="local_click(this);">인천</a></li>
                        <li ><a href="#" onclick="local_click(this);">경기</a></li>
                        <li ><a href="#" onclick="local_click(this);">대구</a></li>
                        <li ><a href="#" onclick="local_click(this);">울산</a></li>
                        <li ><a href="#" onclick="local_click(this);">경상</a></li>
                        <li ><a href="#" onclick="local_click(this);">강원</a></li>
                        <li ><a href="#" onclick="local_click(this);">충청</a></li>
                        <li ><a href="#" onclick="local_click(this);">세종</a></li>
                        <li ><a href="#" onclick="local_click(this);">광주</a></li>
                        <li ><a href="#" onclick="local_click(this);">전라</a></li>
                        <li ><a href="#" onclick="local_click(this);">제주</a></li>
                    </ul>
                    </div>
                </div>
    
   
</div></div></header>




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

<script type="text/javascript">
function local_click(item) {
	  
	  
    var text = $(item).text();
    location.href='CenterListService?local_do='+text;

		
}


//New없애기
$(document).ready(function () {
	$("#msg").click(function () {
		$("#lettern").attr('src',"");
	})
});


</script>

</body>

</html>