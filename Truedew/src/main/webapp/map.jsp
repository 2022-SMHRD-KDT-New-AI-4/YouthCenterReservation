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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
<link rel="stylesheet" type="text/css" href="styles/linefont.css">
<script src="js/listevent.js"></script>
<script src="js/htmlplus.js"></script>

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

.wrap {position: absolute;left: 0;bottom: -26px;width: 288px;height: 132px;margin-left: -69.2px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'LINESeedKR-Bd' !important;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 300px;height: 130px;border-radius: 0px;border-bottom: 0px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff; font-family: 'LINESeedKR-Bd' !important;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 20px; font-family: 'LINESeedKR-Bd' !important; font-style: black;}
    .info .body {position: relative;overflow: hidden; width: 300px; font-family: 'LINESeedKR-Bd' !important; font-style: normal;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 100px; font-family: 'LINESeedKR-Bd' !important; font-style: normal;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap; font-size: 12px; margin-top: -13px; font-family: 'LINESeedKR-Bd' !important; font-style: normal;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px; font-family: 'LINESeedKR-Bd' !important; font-style: normal;}
    .info .img {position: absolute;top: 0px;left: 0px;width: 90px;height:95px;border: 0px solid #ddd;color: #888;overflow: hidden; background : url('src/main/java/gd/map.jpg/광주청년센터.jpg')}
    .info .img1 {position: absolute;top: 0px;left: 0px;width: 90px;height:95px;border: 0px solid #ddd;color: #888;overflow: hidden; background : url('')}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px; height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB; font-size: 11px;}
    .aa {
    	width:195px;
    	height:18px;
    	font-family: 'LINESeedKR-Bd' !important;
    	color:black;
    }
    .link {
    	width:150px;
    }
    #map {
    	margin-left : 10%;
    }
    #listbtn {
    	left:85%;
    	bottom:30px;
    }
    .title{
    	color:black;
    }
    .ellipsis{
    	color:black;
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
<% List<CenterVO> list = (List<CenterVO>)request.getAttribute("list"); %>
<div id="localname">
	<img id="peoplelogo" src="./images/peoplelogo.png">
	<span><%=list.get(0).getLocal_do().substring(0,2)%></span>
	</div>
	
	<div class="listing">
	    <div id="listbtn">
    	<a href="CenterListService?local_do=<%=list.get(0).getLocal_do() %>" style="height:50px;width:50px;"><img style="height:50px;width:50px" src="./images/list.png"></a>
    	</div>

<div id="map" style="width:80%;height:700px;"></div>
<script>
	var seq = 0;
	var positions = new Array();
</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1a6f86c5de53b01691eddf232e3036c8"></script>
	<script type="text/javascript">
	var mapContainer = document.getElementById('map'), //지도를 표시
    mapOption = { 
        center: new kakao.maps.LatLng(<%= list.get(0).getLat()%>,<%= list.get(0).getLng()%>), // 지도의 중심좌표
        level: 8 // 지도의 확대 레벨
    };
	var map = new kakao.maps.Map(mapContainer , mapOption); //지도를 생성합니다
	
</script>
	

 


<%for(int i =0; i<list.size();i++) {%>
	<input type="hidden" value="<%=list.get(i).getCenter_name()%>" class="center_name<%=i%>">
	<input type="hidden" value="<%=list.get(i).getCenter_pic()%>" class="center_pic<%=i%>">
	<input type="hidden" value="<%=list.get(i).getLocal_do()%>" class="local_do<%=i%>">
	<input type="hidden" value="<%=list.get(i).getLocal_gu()%>" class="local_gu<%=i%>">
	<input type="hidden" value="<%=list.get(i).getCenter_runtime()%>" class="center_runtime<%=i%>">
	<input type="hidden" value="<%=list.get(i).getCenter_tel()%>" class="center_tel<%=i%>">
	<input type="hidden" value="<%=list.get(i).getLat()%>" class="lat<%=i%>">
	<input type="hidden" value="<%=list.get(i).getLng()%>" class="lng<%=i%>">
 
<script type="text/javascript">

/* 청년센터 list */
		
		var lat = $('.lat'+seq).val();
		var lng = $('.lng'+seq).val(); 
		var center_name = $('.center_name'+seq).val();
		var center_pic = $('.center_pic'+seq).val();
		var local_do = $('.local_do'+seq).val();
		var local_gu = $('.local_gu'+seq).val();
		var center_runtime = $('.center_runtime'+seq).val();
		var center_tel = $('.center_tel'+seq).val(); 

var mapdata = {
        content: '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title">' + 
                   center_name + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
                        '<img id="id" width="90" height="95" src=' +' ' + center_pic + '>' +
        '           </div>' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">' + '&nbsp;' + local_do + '</div>' +
        '				 <div class="aa">' + '&nbsp;' + local_gu + '</div>'+
        '                <div class="link">' + '&nbsp;' + '운영시간 : '+ center_runtime + '</div>' + 
        '                <div class="jibun ellipsis">' + '&nbsp;' + center_tel +'</div>' +
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>', 
        latlng: new kakao.maps.LatLng(lat,lng)
    }

positions.push(mapdata);
seq = seq+1;
</script>
<%} %>
<script type="text/javascript">

for (var i = 0; i < positions.length; i ++) {
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng // 마커의 위치
    });

    // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // 인포윈도우에 표시할 내용
    });

    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
}

// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
function makeOverListener(map, marker, infowindow) {
    return function() {
        infowindow.open(map, marker);
    };
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
function makeOutListener(infowindow) {
    return function() {
        infowindow.close();
    };
};
console.log();

/* 아래와 같이도 할 수 있습니다 */
/*
for (var i = 0; i < positions.length; i ++) {
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng // 마커의 위치
    });

    // 마커에 표시할 인포윈도우를 생성합니다 
    var infowindow = new kakao.maps.InfoWindow({
        content: positions[i].content // 인포윈도우에 표시할 내용
    });

    // 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
    // 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    (function(marker, infowindow) {
        // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
        kakao.maps.event.addListener(marker, 'mouseover', function() {
            infowindow.open(map, marker);
        });

        // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
        kakao.maps.event.addListener(marker, 'mouseout', function() {
            infowindow.close();
        });
    })(marker, infowindow);
}
*/

</script>
<footer id="footers"></footer>
</body>
</html>