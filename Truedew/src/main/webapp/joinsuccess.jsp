<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
		#Update > ul.actions {
			margin-top:10%;
		}
	h1 {
		
	}
	</style>
	<body style="text-align: center;">
	<% 
	// getParameter : 패킷에 포함된 파라미터 가지고 올 때 사용
	// getAttribute : 특정 영역에 저장된 값 가지고 올 때 (request) -> Object로 반환
	String USER_ID = (String)request.getAttribute("USER_ID"); %>
	
	
							<h1>환영합니다!</h1>
							<%=USER_ID %>님 회원가입을 축하합니다.
							<h4><a href="main2.jsp">메인으로 가기</a></h4>
						
</body>
</html>