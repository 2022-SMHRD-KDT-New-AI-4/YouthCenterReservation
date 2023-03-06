<%@page import="com.youthdew.model.reservationInfoVO"%>
<%@page import="com.youthdew.model.reservationInfoDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.youthdew.model.CenterVO"%>
<%@page import="com.youthdew.model.SpaceListDAO"%>
<%@page import="com.youthdew.model.SpaceListVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청년이슬 예약하기</title>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://cdn.materialdesignicons.com/2.2.43/css/materialdesignicons.min.css">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="styles/common.css">
<link rel="stylesheet" type="text/css" href="styles/white-theme.css">
<link rel="stylesheet" type="text/css" href="styles/chkboxstyle.css">
<link rel="stylesheet" type="text/css" href="styles/linefont.css">

<style>
#d-flex {
	
}
#selectedDate{
font-size : 30px;
text-align :center;
}
#space_img{
width: 275px;
height: 200px;
object-fit: cover;
}
.blog_post_content{
margin-left : 100px;
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
       .clo-2{
       background : red;
       }
</style>

</head>
<body>
<!--내가 선택한 공유공간 정보불러오기  -->
	<%
	request.setCharacterEncoding("UTF-8");
	int shared_space_seq= Integer.parseInt(request.getParameter("shared_space_seq"));
	
	reservationInfoDAO dao = new reservationInfoDAO();
	SpaceListVO lvo = dao.selectshared_space(shared_space_seq); 
	reservationInfoVO svo = dao.selectRuntime(shared_space_seq);
	   
	String weekday_time = svo.getCenter_weekday();
	String weekend_time = svo.getCenter_weekend();%>
	
	<input id="weekday_time" type="hidden" name="local_do" value="<%=weekday_time%>" readonly/>   
   <input id="weekend_time" type="hidden" name="local_do" value="<%=weekend_time%>" readonly/>   
	<input type="hidden" value="<%=lvo.getShared_space_seq() %>" id="shared_space_seq">
	<%-- <input type="hidden" name="shared_space_name" value=<%=lvo.getShared_space_name() %>>
    <input type="hidden" name="center_name" value=<%=svo.getCenter_name() %>> --%>

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
								<form action="SpaceList" class="booking_form" id="booking_form" name="insertForm" onsubmit="return formCheck();">
									<div class="d-flex flex-xl-row flex-column align-items-start justify-content-start" id="d-flex">
										<div class="booking_input_container d-flex flex-row align-items-start justify-content-start flex-wrap">
											<div>
												<select name="local_do" id="lolist" class="booking_input booking_input_b" onchange="categoryChange(this)">
													<option value="">지역(시/도)</option>
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
												<option value="">센터명</option>															
											 </select>
											</div>
				
										</div>
										<div>
										<input type="submit" class="booking_button trans_200" value="다시예약하기">
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
	
	<!--선택한 공유공간 정보  -->
	<form action="reservationService" method="get">
	<br><br><br>
	<div class="container">
	<div class="blog_post">
        <div class="blog_post_image"><img id="space_img" src =<%=lvo.getShared_space_pic()%>>
        </div>
          <div class="blog_post_content">
            <div class="blog_post_title" id="title"><a href="#"><%=lvo.getShared_space_name()%></a>
         	   <br id="br">
         		<br>
             	<div id="local_ysh">사용 가능 인원 &nbsp;: &nbsp;<%=lvo.getPersons()%> 명<br>
            		<%=lvo.getSpace_info()%>
            		<input type="hidden" name="shared_space_seq" value=<%=lvo.getShared_space_seq() %>>
            		<input type="hidden" name="shared_space_name" value=<%=lvo.getShared_space_name() %>>
    				<input type="hidden" name="center_name" value=<%=svo.getCenter_name() %>>
            	</div>
            </div>
            	<br>	
           </div>
      	 </div>
      	</div>
      <hr>
      
      <!-- 예약하기 창 -->
	<div class="contact">
		<div class="container">
			<div class="row">
				<!-- 캘린더  -->
				<div class="col-lg-6">
					<div class="contact_content">
						<div class="contact_form_container">
							<div id='calendar'></div>
							<input type="hidden" id="dayValue" value="" name="reserv_date">
						</div>
					</div>
				</div>
				<!--오른쪽 창  -->
				<div class="col-lg-6">
					<div class="contact_content" >
						<div class="contact_title" id='selectedDate'></div>
							<div class="cf">
								<div class="col-2"></div>
							</div>
					</div>
					<input class="booking_button trans_200" id="checkRes" type="button" value="예약하기">
				</div>
			</div>
		</div>
	</div>
	</form>
	<!--슈퍼컨테이너  -->
</div>
   <!-- Footer -->

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
<script src="//code.jquery.com/jquery-1.11.0.js"></script>
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.4/index.global.min.js'></script>
<script>
	
	//연속된 시간 선택 안할 시 경고창 띄우기
	var checkList = [];
	var isCheck = false;
	
	$('#checkRes').click(function(){
		isCheck = false;
		checkList = [];
		var checkBoxV = document.querySelectorAll(".check_re");
		
		for(var i = 0; i < checkBoxV.length; i++){
			if(checkBoxV[i].checked){
				var text = checkBoxV[i].getAttribute('id');
				checkList.push(text.substr(text.length - 1,text.length));
			}
		}
		
		for(var i = 0; i < checkBoxV.length - 1; i++){
			for(var j = i+1; j < checkBoxV.length; j++){
				var temp = checkList[i] - checkList[j];
				if(temp < 0){
					temp = temp * -1;
				}
				if(temp > 2){
					isCheck = true;
					break;
				}
			}
		}
		if(isCheck){
			alert("시간은 연속으로 예약 가능합니다.");
			$('#checkRes').attr('type','button');
		}else{
			/* console.log(checkList); */
			$('#checkRes').attr('type','submit');
			alert("예약하시겠습니까?")
		}
	});
	
	
	/* //체크박스 3개 이상 선택시 경고창
	$(document).ready(function(){
		$("input[name='checkbox_solid_border']").on("click", function(){
			var cnt =$("input[name='checkbox_solid_border']:checked").length;
			
			if(cnt>3){
				$(this).prop("checked",false);
				alert("최대 3시간까지 예약 가능합니다.");
			}
			
			
			});
		}); */
	
	let calendar;
	let prevClickedDayEl; // 이전에 클릭한 날짜 요소
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		calendar = new FullCalendar.Calendar(calendarEl, {
			selectable : true,
			initialView : 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면 (기본 설정: 달)
			locale : 'ko', // 한국어 설정
			expandRows : true, // 화면에 맞게 높이 재설정
			height : '500px', // calendar 높이 설정 
			aspectRatio: 1.5,
			

			dateClick : function(info) {
				if (prevClickedDayEl) {
					prevClickedDayEl.style.backgroundColor = ''; // 이전에 클릭한 날짜의 배경색을 원래대로 되돌림
				}
				info.dayEl.style.backgroundColor = '#ffddff';
				prevClickedDayEl = info.dayEl; // 이전에 클릭한 날짜 요소를 현재 클릭한 날짜 요소로 업데이트
				
				// 선택한 날짜를 selectedDate 요소에 출력
				let selectedDateEl = document.getElementById('selectedDate');
				selectedDateEl.textContent = info.dateStr;
				$('#dayValue').val(info.dateStr);
				// 날짜값 저장
	            var date = $('#dayValue').val();
	           console.log(date);
	           var runtime = [];
	               $.ajax({
	                   url : "SearchDayService?Date="+date,
	                   async:false,
	                   success : function(data){
	                        if(data == '7' || data== '1' ){ // 주말
	                             
	                             var time = $('#weekend_time').val();
	                           console.log(time);
	                           
	                        }else{ // 주중
	                              var time = $('#weekday_time').val();
	                           console.log(time);                      
	                        
	                        }                 
	               //console.log(runtime.length);
	               if(time == "null"){
	                  $(".col-2").html("<div><span style='color:red;'><b>주말은 휴관입니다</b></span></div>");
	               } else {
	                  
	               var open = Number(time.substring(0,2));
	               var last = Number(time.substring(6,8));

	             //  var runtime = [];

	               for( var i =0; i<last-open;i++){
	                   if((open+i)<10) {
	                   runtime[i]="0"+(open+i)+":00~"+(open+i+1)+":00";   
	               } else {            
	               runtime[i]=(open+i)+":00~"+(open+i+1)+":00";
	               }
	               
	               
	           }
	               
	           var html = "";
	           for(var i=0;i<runtime.length;i++) {
	               html+="<div class='box-group solid border'>";
	               html+="<input type='checkbox' class='check_re' name='checkbox_solid_border' id='checkbox_solid_border_"+(i+1)+"' value='"+runtime[i]+"'/>";   
	               html+="<label for='checkbox_solid_border_"+(i+1)+"'>"+runtime[i]+"</label>"
	               html+="</div>"
	           }// html 추가 for문

	           $(".col-2").html(html);
	            
	               } // time !=null 닫음
	                  
	                   } // success 닫음
	               }); //ajax 닫음
	            
	            //console.log("ajax밖");
	           
	            //console.log(runtime[i]);
	            
	            // 예약정보 가져오는 비동기통신
	            
	            var shared_space_seq = $('#shared_space_seq').val();
	            var reserv_date = $('#dayValue').val();
	            var checkBoxV = document.querySelectorAll(".check_re");
	            
	            $.ajax({
	                  type: "POST",
	                  url: "reservationSchedule",
	                  data: {
	                  "shared_space_seq" : shared_space_seq,
	                  "reserv_date": reserv_date
	              },
	              dataType : "JSON",
	              success: function(data){
	            	  
	              
	                 //console.log(data);
	            	  var time=[];

	            	  for( var i=0; i<data.length ; i++){
	            	   //   console.log("data "+i+"번째 : "+data[i].use_time);
	            	      time[i] = data[i].use_time.split("|");
//	            	      console.log("time"+i+"번 : "+ time[i]);

	            	  }
	            	  //console.log(time);

	            	  var time2 = time.reduce(function (acc, cur) {
	            	    return acc.concat(cur);
	            	  });


	            	  for(var i = 0; i<time2.length;i++){

	            	   //  console.log("time2:"+i+"번째 : "+time2[i]);
	            	  }

	            	   var cktime = [];

	            	   for (var i=0;i<runtime.length;i++) {
	            	       cktime[i] = $("label[for='checkbox_solid_border_"+(i+1)+"']").text();
	            	   //   console.log("체크박스안 시간 출력:"+cktime[i]);
	            	      }


	            	  for( var i = 0 ; i < time2.length;i++){
	            	      for( var j = 0; j< cktime.length; j++){
	            	          
	            	          if(time2[i] == cktime[j]) {
	            	             // console.log(time2[i]+"가 시간 똑같다");
	            	              $(`#checkbox_solid_border_${j+1}`).prop("disabled",true);
	            	              $("label[for='checkbox_solid_border_"+(j+1)+"']").css("background-color","lightgray");

	            	              break;
	            	          }

	            	      }

	            	  }
	                 

	                 },error : function() {
	                     alert('URL호출 실패');
	                 }
	          
	              });// 소라의 ajax 닫음
	            $("input[name='checkbox_solid_border']").on("click", function(){
	    			var cnt =$("input[name='checkbox_solid_border']:checked").length;
	    			console.log(cnt);
	    			if(cnt>3){
	    				$(this).prop("checked",false);
	    				alert("최대 3시간까지 예약 가능합니다.");
	    			}
	    			
	    			
	    		});
	              
	         } // 날짜 클릭 엔드
	      
	      
	      
	      
	      });
	         calendar.render();
	      });
	      

</script>



</body>
</html>