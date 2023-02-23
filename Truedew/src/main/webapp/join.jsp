<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body style=text-align:center;>
<h1>회원가입</h1>


<form action="JoinService2" method="post">
	      아이디 : <a><input style="width:400px;height:50px;font-size:20px;" name="USER_ID" type="text"  placeholder="ID를 입력하세요"></a><br>
	    비밀번호 : <a><input style="width:400px;height:50px;font-size:20px;" name="USER_PW" type="password"  placeholder="PW를 입력하세요"></a><br>
	    이름 : <a><input style="width:400px;height:50px;font-size:20px;" name="USER_NAME" type="text"  placeholder="이름을 입력하세요"></a><br>
	    생년월일 : <a><input style="width:400px;height:50px;font-size:20px;" name="BIRTH" type="text"  placeholder="생일을 입력하세요"></a><br>
	      연락처 : <a><input style="width:400px;height:50px;font-size:20px;" name="TEL" type="text"  placeholder="전화번호를 입력하세요"></a><br>
	    <a><input style="width:400px;height:50px;font-size:20px;" type="submit" value="입력" class="button fit"></a><br>
	 </form>
	 
</body>
</html>