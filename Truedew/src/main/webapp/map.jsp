<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List"%>
    <%@page import="java.util.ArrayList"%>
<%@page import="com.youthdew.model.CenterVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>전체지도</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <style>
    
    .wrap {position: absolute;left: 0;bottom: -26px;width: 288px;height: 132px;margin-left: -69.2px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 300px;height: 130px;border-radius: 0px;border-bottom: 0px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 20px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .body {position: relative;overflow: hidden; width: 300px;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 100px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap; font-size: 12px; margin-top: -13px;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 0px;left: 0px;width: 90px;height:95px;border: 0px solid #ddd;color: #888;overflow: hidden; background : url('src/main/java/gd/map.jpg/광주청년센터.jpg')}
    .info .img1 {position: absolute;top: 0px;left: 0px;width: 90px;height:95px;border: 0px solid #ddd;color: #888;overflow: hidden; background : url('')}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px; height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB; font-size: 11px;}
    .aa {
    	width:195px;
    	height:18px;
    }
    
    </style>

</head>
<body>

<script type="text/javascript">
	var seq = 0;
	var positions = new Array();
</script>
	

 <% List<CenterVO> list = (List<CenterVO>)request.getAttribute("list"); %>


<%for(int i =0; i<46;i++) {%>
	<input type="hidden" value="<%=list.get(i).getCenter_name()%>" class="center_name<%=i%>">
	<input type="hidden" value="<%=list.get(i).getCenter_pic()%>" class="center_pic<%=i%>">
	<input type="hidden" value="<%=list.get(i).getLocal_do()%>" class="local_do<%=i%>">
	<input type="hidden" value="<%=list.get(i).getLocal_gu()%>" class="local_gu<%=i%>">
	<input type="hidden" value="<%=list.get(i).getCenter_runtime()%>" class="center_runtime<%=i%>">
	<input type="hidden" value="<%=list.get(i).getCenter_tel()%>" class="center_tel<%=i%>">
	<input type="hidden" value="<%=list.get(i).getLat()%>" class="lat<%=i%>">
	<input type="hidden" value="<%=list.get(i).getLng()%>" class="lng<%=i%>">

<div id="map" style="width:100%;height:950px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1a6f86c5de53b01691eddf232e3036c8"></script>
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
		
		
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(37.6473683,127.017318), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var aa = {
        content: '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title">' + 
                   center_name + 
        '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
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

positions.push(aa);
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

</body>
</html>