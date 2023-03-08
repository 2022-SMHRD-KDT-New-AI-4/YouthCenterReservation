<%@page import="com.youthdew.model.ReviewDAO"%>
<%@page import="com.youthdew.model.ReviewVO"%>
<%@page import="com.youthdew.model.CenterDAO"%>
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
<title>청년이슬 공간예약</title>
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
<link rel="stylesheet" type="text/css" href="styles/spaceblog.css">
<link rel="stylesheet" type="text/css" href="styles/blog_responsive.css">
<link rel="stylesheet" type="text/css" href="styles/newstyle.css">
<link rel="stylesheet" type="text/css" href="styles/tabstyle2.css">
<link rel="stylesheet" type="text/css" href="styles/linefont.css">

<style>
#local_ysh{	
	width:700px;
	height:200px;
    color:black;
    font-size:20px;
    margin-top:10px;
}
/* .show{
border: 1px solid rgb(209, 205, 205);
margin-top: 10px;
} */

#reservation{
 	position:relative;
 	left: 50%;
 	bottom: 150px;
}

#localname{
	font-size: 50px;
	text-align: center;
	margin-top: 50px;
	color: black;
}

#peoplelogo{
	width:70px;
	height:70px;
	margin-bottom:20px;
	}

#chklogin{
    position:absolute;
    left:85%;
    bottom:10px;
}

#detailct{
    color:black;
    font-size:25px;
    
}
#detailinfo{
    border: 1px solid rgb(166, 163, 163);
    height:250px;
    width:900px;
    text-align:center;
    margin-top:20px;
    margin-left:40px;
}

td{
    border: 1px solid rgb(166, 163, 163);
    
}
/* #first{
background-color:rgb(6,163,218);
color:white;
} */
#facility_img{
	width:50px;
	height:50px;	
}

#facinfo{

width:80%;
height:400px;
font-size:25px;
color:black;
margin-top:10px;
}

#factb{
    border: 1px solid rgb(166, 163, 163);
    height:250px;
    width:900px;
    text-align:center;
/*     margin-top:20px;
    margin-left:40px; */
}
.booking_input_container.d-flex.flex-row.align-items-start{
	width:764px;
	height:69px;
	position:relative;
	margin-left:130px;
}

#lolist {
	width: 100%;
	height: 54px;
}
#ctlist {
	width: 100%;
	height: 54px;
}
.booking_button.trans_200 {
	width: 150.54px;
	height: 54px;
}

.sns{
	width: 40px;
}

.center_sns{
	margin-top:10px;
	margin-left:50px;
	margin-bottom:30px;
}

</style>

</head>
<body>

<%
	// 로그인 정보
	MemberVO loginM = (MemberVO)session.getAttribute("loginM");
if(loginM != null){
	out.print("<input type='hidden' id='loginInfo' value='ok'>");
}

	ArrayList<SpaceListVO> list=(ArrayList<SpaceListVO>)request.getAttribute("list");
	CenterVO center_info=(CenterVO)request.getAttribute("center_info"); 
	String Center_id = center_info.getCenter_id();
	SpaceListDAO dao = new SpaceListDAO();
	ArrayList<CenterVO> list2 = dao.SelectcenterFacility(Center_id);

	//sns
	CenterDAO dao2 = new CenterDAO();
	ArrayList<CenterVO> list3 = dao2.selectSNS(Center_id);
	
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


    <div id="localname">
        <img id="peoplelogo" src="./images/peoplelogo.png">
        <span><%=center_info.getCenter_name()%></span>
    </div>
	<!-- 탭 메뉴 상단 시작 -->
	<div class="blog">
	 <ul class="list">
        <li class="tab-button active" id="spacebtn">공간 예약</li>
        <li class="tab-button" id="detailbtn">상세 정보</li>
        <li class="tab-button" id="reviewbtn">리뷰</li>
      </ul>  

    
	
    <!-- 탭 메뉴 상단 끝 -->
    
    <!-- 탭 메뉴 내용 시작 -->
   <div class="tab-content show">

<%for (int i = 0; i < list.size();i++) {%>
		 <div class="blog_post">	
        	<!--청년센터 리스트 -->
		 	<div class="blog_post_image"><img id="space_pic" src=<%= list.get(i).getShared_space_pic()%> alt=""></div>
		 	
		 	<div class="blog_post_content">
			<div class="blog_post_title"><span class="spacename"><%=list.get(i).getShared_space_name() %></span>
            </div>
			
		 		<div id="local_ysh">
                <span><%=list.get(i).getSpace_info() %></span>
                <br>
                <br>
                <span>사용 가능 인원 &nbsp;: &nbsp;<%=list.get(i).getPersons() %>명</span>
                </div>
			
            </div>
				<div class="button blog_post_button" id="chklogin">
                    <a href="javascript:checkLogin('val<%=i%>');">예약하기</a>
                    <input class="val<%= i %>" id="space_seq" type="hidden" name="shared_space_seq" value="<%=list.get(i).getShared_space_seq() %>">
                </div>  
			 <div><br><hr><br><br></div> 
		</div>
		<%} %>				
	</div> <!-- tab-content1 끝 -->
   
   
   <div class="tab-content">
                <div class="blog_post_title"><span class="spacename"><%=center_info.getCenter_name()%></span>
                <br><br>
		 		<div class="blog_post_text" >
                    <div class="blog_post_image"><img id="space_pic" src=<%= center_info.getCenter_pic()%> alt=""></div>
                    <div class="blog_post_content" id="detailct">
                    <table id="detailinfo">
		 				<tr>
		 					<td>운영기관 </td>
		 					<td><%=center_info.getCenter_name()%></td>
		 				</tr>
		 				<tr>
		 					<td>공간이용시간 </td>
		 					<td><%=center_info.getCenter_runtime()%></td>
		 				</tr>
		 				<tr>
		 					<td>주소 </td>
		 					<td><%=center_info.getLocal_do()%> <%=center_info.getLocal_gu()%></td>
		 				</tr>
		 				<tr>
		 					<td>전화번호 </td>
		 					<td><%=center_info.getCenter_tel()%></td>
		 				</tr>
		 			</table>
		 			<div class="center_sns">
						<%for(int i =0;i<list3.size();i++){ 
							if(list3 !=null){
								if(list3.get(i).getSns_code().equals("유튜브")){%>	
		 							<a href="<%=list3.get(i).getSns_url()%>"><img class="sns" src= "./images/center_sns_1.png"></a>
		 						<%}else if(list3.get(i).getSns_code().equals("인스타그램")){%>
		 							<a href="<%=list3.get(i).getSns_url()%>"><img class="sns" src= "./images/center_sns_2.png"></a> 
		 						<%}else if(list3.get(i).getSns_code().equals("페이스북")){%>
		 							<a href="<%=list3.get(i).getSns_url()%>"><img class="sns" src= "./images/center_sns_3.png"></a>
		 						<%}else if(list3.get(i).getSns_code().equals("카카오톡플러스친구")){%>
		 							<a href="<%=list3.get(i).getSns_url()%>"><img class="sns" src= "./images/center_sns_4.png"></a> 
		 						<%}else{%>
		 							<a href="<%=list3.get(i).getSns_url()%>"><img class="sns" src= "./images/center_sns_5.png"></a> 
		 						<%}}} %>
		 			</div>
		 			

                    </div>
			    </div>
			    
			    </div>
		 			<hr>
   
   		 			<div class="blog_post">
   		 			<div class="blog_post_title"><span class="spacename">부대시설</span>	
		 			<div id="facinfo">
		 			<table id="factb">
		 			<tr>
		 			<%for(int i =0; i<list2.size();i++){%>
		 			<td><img id="facility_img" src = "./images/facility_img_<%=i+1 %>.png"></td>
		 			<td id="first"><%=list2.get(i).getFac_code()%></td>
		 			<td><%=list2.get(i).getFac_cnt()%>개</td>
		 			</tr>
		 			<%} %>
		 			</table>	
		 			</div>
        
					</div>
   
			
			
				</div>	

		</div>
<!-- tab-content2 끝 -->

 <%
	/* ReviewVO center_id = (ReviewVO)request.getAttribute("center_id");
 String center_Id = center_id.getCenter_id();
 */

	ReviewDAO rdao = new ReviewDAO();
 	ArrayList<ReviewVO> Rlist = rdao.viewReview(Center_id);
%>

      <div class="tab-content">
      <span>리뷰</span>
	      <%for(int i=0; i<Rlist.size(); i++) {%>
	        <div class="blog_post">
	        	<div>
	        		<ul>
	        			<li><%= Rlist.get(i).getUser_id() %></li>
	        			<li><%= Rlist.get(i).getReview_content() %></li>
	        			<li><%= Rlist.get(i).getReview_ratings() %></li>
	        		</ul>
	        	</div>
	        	
	        </div>
        	<%} %>
		</div>
	<!-- tab-content3 끝 -->
	
<!-- 탭 메뉴 내용 끝 -->
	 
   <!-- Footer -->

	
</div>
</div>
	<footer id="footers"></footer>

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
<script src="js/tab.js"></script>

<script>
 //예약하기 버튼 클릭 시 로그인 여부 확인
	function checkLogin(eleme){
		console.log('작동함');
		var text = $('#loginInfo').val();
		if(text!="ok"){
			console.log("로그인 안했음");
			alert("로그인 후 이용해주세요.");
			location.href='login.jsp';
		}else{
			console.log("로그인 했음");
			
			var shared_space_seq = $("."+eleme).val();
			
			
			location.href="reservation.jsp?shared_space_seq="+shared_space_seq; 
			
			}

	}
   
   
</script>


</body>
</html>