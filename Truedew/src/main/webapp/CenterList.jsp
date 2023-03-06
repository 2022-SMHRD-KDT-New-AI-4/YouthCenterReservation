<%@page import="com.youthdew.model.MarkVO"%>
<%@page import="java.util.List"%>
<%@page import="com.youthdew.model.MemberDAO"%>
<%@page import="com.youthdew.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.youthdew.model.CenterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="login.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>청년이슬 센터목록</title>
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
<link rel="stylesheet" type="text/css" href="styles/booking.css">
<link rel="stylesheet" type="text/css" href="styles/booking_responsive.css">
<link rel="stylesheet" type="text/css" href="styles/newstyle.css">
<link rel="stylesheet" type="text/css" href="styles/elements.css">
<link rel="stylesheet" type="text/css" href="styles/elements_responsive.css">
<link rel="stylesheet" type="text/css" href="styles/linefont.css">
<link rel="stylesheet" type="text/css" href="styles/centerlist.css">
<link rel="stylesheet" type="text/css" href="styles/chkboxstyle.css">
<link rel="stylesheet" type="text/css" href="styles/white-theme.css">
<link rel="stylesheet" type="text/css" href="styles/common.css">

<style>


	#localname{
		font-size: 70px;
		text-align: center;
		margin-top: 50px;
		color: black;
	}
	
	#fac{
		margin: center;
		left:17%;
	}

	#fac_div{
		margin-top: 10px;
	}
	
	#peoplelogo{
	
	width:70px;
	height:70px;
	margin-bottom:20px;
	
	
	}
	
	#mapbtn{
    position: relative;
    margin-left: 90%;
    margin-bottom:10px;
   }
 	
 	.ckboxborder{
 	border: 1px solid rgb(6,163,218);
 	border-radius: 5px;
 	display: inline-block; /* 가로로 나열하기 위해 block레벨 요소를 inline-block레벨로 전환 */
    width: 150px;  /*영역 크기 지정 안해주면 inline 레벨처럼 내용물 만큼만 차지하기 때문에 크기 지정 */
    height: 50px;  /*영역 크기 지정 안해주면 inline 레벨처럼 내용물 만큼만 차지하기 때문에 크기 지정 */
   /*  background-color:rgb(225, 247, 254); */
    margin-left:10px;
 	}

        #facontainer {
           
            width: 800px;
            height: 70px;
            margin: 0 auto; /* container 영역을 브라우저에서 가운데 정렬하기 위해 auto설정 */
            text-align: center; /* inline-block화 된 div들을 텍스트 마냥 center로 정렬*/
        }



</style>
</head>
<body>

<div class="super_container">
	<header id="headers"></header>
	

	<!-- Home -->

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

	<%--청년센터 리스트 --%>
	
	<% ArrayList<CenterVO> list = (ArrayList<CenterVO>)request.getAttribute("list");
 		MemberVO loginM = (MemberVO)session.getAttribute("loginM");
		MemberDAO dao = new MemberDAO(); 
		/* List<MarkVO> list2 = dao.selectMark(loginM.getUser_id()); */
		
		
	%>
	
	<!-- map list 가져오기 -->
	<form action="mapCenterService" id="mapform">
		<input type="hidden" value="<%=list.get(0).getCenter_name()%>" id="center_name">
		<input type="hidden" value="<%=list.get(0).getLocal_do()%>" id="local_do">
		<input type="hidden" value="<%=list.get(0).getLocal_gu()%>" id="local_gu">
	</form>
	
	
	<!-- Booking -->
		
	<div id="localname">
	<img id="peoplelogo" src="./images/peoplelogo.png">
	<span><%=list.get(0).getLocal_do().substring(0,2)%></span>
	</div>

	
	
	<div class="col-lg-8" id="fac">
	<!-- Accordion -->
	<div class="accordions">
	<div class="accordion_container">
		<div class="accordion d-flex flex-row align-items-center"><div>부대시설 상세 검색</div></div>
		<div class="accordion_panel">
			<div id="fac_div" class="elements_title" style="color:black; text-align: center; font-size: 20px">
				<form action="FacService" method="post" onsubmit="return facCheck();">
				<div id="fac_div2">
				<hr>
				<input class="checkGoods" type="hidden" name="local_do" value="<%=list.get(0).getLocal_do().substring(0,2)%>" readonly/>
				
				<div id="facontainer" class='box-group solid'>
				<div class="ckboxborder">
				<input class="checkGoods" type="checkbox" name="fac_code" id=checkbox_solid_border_1 value="빔프로젝트">
				<label for='checkbox_solid_border_1'>빔프로젝트</label>
				</div>
				
				<div class="ckboxborder">
				<input class="checkGoods" type="checkbox" name="fac_code" id=checkbox_solid_border_2 value="PC">
				<label for='checkbox_solid_border_2'>PC</label>
				</div>
				
				<div class="ckboxborder">
				<input class="checkGoods" type="checkbox" name="fac_code" id=checkbox_solid_border_3 value="프린터">
				<label for='checkbox_solid_border_3'>프린터</label>
				</div>
				
				<div class="ckboxborder">
				<input class="checkGoods" type="checkbox" name="fac_code" id=checkbox_solid_border_4 value="마이크">
				<label for='checkbox_solid_border_4'>마이크</label>
				</div>
				
				</div><!-- box-group solid border 닫음 -->
				
				</div><!-- fac_div2 닫음 -->
				<input id="facsearch" type="button" class="booking_button trans_200" value="검색">
				<hr>
				</form>

<%-- 				<input class="checkGoods" type="hidden" name="local_do" value="<%=list.get(0).getLocal_do().substring(0,2)%>" readonly/>
				<input class="checkGoods" type="checkbox" name="fac_code" value="빔프로젝트">빔프로젝트
				
				<input class="checkGoods" type="checkbox" name="fac_code" value="PC">PC
				<input class="checkGoods" type="checkbox" name="fac_code" value="프린터">프린터
				<input class="checkGoods" type="checkbox" name="fac_code" value="마이크">마이크 --%>


			</div>
		</div>
	</div>
	</div>

	<div class="booking">
	    <div id="mapbtn">
    	<a href="map.jsp" style="height:50px;width:50px;"><img style="height:50px;width:50px" src="./images/location.png"></a>
    	</div>
    	
		<div class="container">
			<div class="row">
				<div class="col">
							
				<%for(int i=0; i< list.size();i=i+3){ %>
					<!-- Booking Slider -->
					<div > <!-- class="booking_slider_container" -->
						<div class="owl-carousel owl-theme booking_slider">
					
						
						<%for(int j=i;j<i+3;j++) {
							if(j<list.size()){%>
							<!-- Slide -->
							<div>
							<div class="booking_item">
								<div class="localcenter">
								<a href="SpaceList?local_do=<%=list.get(0).getLocal_do().substring(0,2)%>&center_list=<%=list.get(j).getCenter_name()%>">
								<img class="centerimg" src="<%=list.get(j).getCenter_pic()%>"></a>
	                      		</div>
								<hr>
                     			 <span class="ctname"><b><%=list.get(j).getCenter_name()%></b></span>
								  
								  <div class="insert_mark">
		                          <a href="insertMarkService?center_id=<%=list.get(j).getCenter_id()%>&user_id=<%=loginM.getUser_id()%>&local_do=<%=list.get(0).getLocal_do().substring(0,2)%>">
									
 									<%
 									MarkVO vo = new MarkVO(list.get(j).getCenter_id(), loginM.getUser_id());
 									MarkVO mvo = dao.overlapMark(vo);
									if(mvo==null) { %>
									<img src="./images/vac_star.png">
									<%} else{ %>
									<img src="./images/full_star.png">
									<%} %>
									</a>
			                      </div>
			                 
			                 </div><!--booking_item div 끝-->
			                 </div><!--센터목록 div끝-->
				
					<%} else{ %>
						<div class="booking_item"></div>
					<%} }%>
						</div>
					</div>
					<br><br>
				<%} %>
	
				</div>
			</div>
		</div>
	</div>




</div>
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
<script src="js/booking.js"></script>
<script src="js/listevent.js"></script>
<script src="js/htmlplus.js"></script>
<script src="js/space.js"></script>
<script src="js/elements.js"></script>

<script>
//셀렉트 박스 선택 안할 시 경고창 띄우기
var isCheck = false;

$('#facsearch').click(function(){
	
	isCheck = false;
	
	var checkGoods = document.querySelectorAll('.checkGoods');
	for(var i = 0; i < checkGoods.length; i++){
		if(checkGoods[i].checked){
			isCheck = true;
		}
	}
	if(isCheck){
		$('#facsearch').attr('type','submit');
	}else{
		alert("부대시설을 선택하여 주십시오.");
		$('#facsearch').attr('type','button');
	}
});
</script>
</body>
</html>