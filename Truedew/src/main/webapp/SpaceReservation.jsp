<%@page import="com.youthdew.model.MemberVO"%>
<%@page import="com.youthdew.model.CenterVO"%>
<%@page import="com.youthdew.model.SpaceListVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.youthdew.model.SpaceListDAO"%>
<%@page import="com.youthdew.model.SpaceListVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.html" %>
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

<style>
#local_ysh{   
   width:400px;
   height:167px;
}

   #menuitems{
      background-color: white;
   }
   .locallist{
      display: none;
   }

   li:hover {
      background-color: rgb(183, 186, 231) !important;
   }

   /* 메인검색 */
   #lolist,#ctlist{
      color: rgb(255,163,123);
   }
   ul.tabs{
   margin: 0px;
   padding: 0px;
   list-style: none;
}
</style>

</head>
<body>
<%
   // 로그인 정보
   MemberVO login = (MemberVO)session.getAttribute("loginM");
   if(login != null){
      out.print("<input type='hidden' id='loginInfo' value='ok'>");
   }
%>
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
                        <form action="SpaceList" class="booking_form" id="booking_form">
                           <div class="d-flex flex-xl-row flex-column align-items-start justify-content-start">
                              <div class="booking_input_container d-flex flex-row align-items-start justify-content-start flex-wrap">
                                 <div>
                                    <select name="local_do" id="lolist" class="booking_input booking_input_b" onchange="categoryChange(this)">
                                       <option>지역(시/도)</option>
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
                                    <option>센터명</option>                                             
                                  </select>
                                 </div>
                                 <div>
                              <input type="submit" class="booking_button trans_200" value="다시예약하기">
                              </div>
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


   <!-- 탭 메뉴 상단 시작 -->
   
   
   
    <ul class="list" id="tab_list">
        <li class="tab-button active">공간 목록</li>
        <li class="tab-button">상세 정보</li>
        <li class="tab-button">리뷰</li>
      </ul>
    <!-- 탭 메뉴 상단 끝 -->
    
    <!-- 탭 메뉴 내용 시작 -->
      <div class="tab-content show">
        <%--청년센터 리스트 --%>
      <% ArrayList<SpaceListVO> list=(ArrayList<SpaceListVO>)request.getAttribute("list");
      CenterVO center_info=(CenterVO)request.getAttribute("center_info");%>
       <h1><%=center_info.getCenter_name()%></h1>
       
       <%for (int i = 0; i < list.size();i++) {%>
      <br>
<br>
<br>
       <div class="blog_post">
          <div class="blog_post_image"><img src=<%= list.get(i).getShared_space_pic()%> alt="">
          </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <div class="blog_post_content">
         <div class="blog_post_title" id="title"><a href="#"><%=list.get(i).getShared_space_name() %></a></span>
         <br id="br">
         <br>
             <span id="local_ysh"><%=list.get(i).getLocal_do() %><br>
             사용 가능 인원 &nbsp;: &nbsp;<%=list.get(i).getPersons() %><br>
            <%=list.get(i).getSpace_info() %></div><br>
            </div>
         <div class="button blog_post_button" id="reservation"><a href="#" onClick="location.href='reservation.jsp'">예약하기</a></span> 
      </div>
      </div>
      <hr>
         <%} %>
      
      
       <div class="tab-content">
          <div>
                <img src=<%= center_info.getCenter_pic()%> alt="">
                <table>
                   <tr>
                      <td>운영기관 : </td>
                      <td><%=center_info.getCenter_name()%></td>
                   </tr>
                   <tr>
                      <td>공간이용시간 : </td>
                      <td><%=center_info.getCenter_runtime()%></td>
                   </tr>
                   <tr>
                      <td>주소 : </td>
                      <td><%=center_info.getLocal_gu()%></td>
                   </tr>
                   <tr>
                      <td>전화번호 : </td>
                      <td><%=center_info.getCenter_tel()%></td>
                   </tr>
                </table>
                
         </div>
      
		</div>
      
      <div class="tab-content">
        <p>리뷰정보입니다</p>
 
      

   </div>
<!-- 탭 메뉴 내용 끝 -->
    
   <!-- Footer -->

   <footer id="footers"></footer>
         </div>
   
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
<script src="js/blog.js"></script>
<script src="js/listevent.js"></script>
<script src="js/htmlplus.js"></script>
<script src="js/space.js"></script>
<script>

   //함수 호출 반복문
   for(let i = 0; i < $('.tab-button').length; i++){
       tabOpen(i); 
   }
   
   //함수에 보관
   function tabOpen(e){
       $('.tab-button').eq(e).click(function(){
           $('.tab-button').removeClass('active');
           $('.tab-content').removeClass('show');
           $('.tab-button').eq(e).addClass('active');
           $('.tab-content').eq(e).addClass('show');
       });
   }
</script>


</body>
</html>