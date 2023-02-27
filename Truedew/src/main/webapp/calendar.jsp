<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset='utf-8' />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.4/index.global.min.js'></script>

</head>
<body>

	<div id='calendar'></div>
	<div id='selectedDate'></div>


	<script>
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

				dateClick : function(info) {
					if (prevClickedDayEl) {
						prevClickedDayEl.style.backgroundColor = ''; // 이전에 클릭한 날짜의 배경색을 원래대로 되돌림
					}
					info.dayEl.style.backgroundColor = '#ffddff';
					prevClickedDayEl = info.dayEl; // 이전에 클릭한 날짜 요소를 현재 클릭한 날짜 요소로 업데이트
					
					// 선택한 날짜를 selectedDate 요소에 출력
					let selectedDateEl = document.getElementById('selectedDate');
					selectedDateEl.textContent = info.dateStr;
				}
			
			});
			calendar.render();
		});
	</script>

</body>
</html>
