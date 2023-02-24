<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body style=text-align:center;>
<h1>회원가입</h1>


	<form action="JoinService2" method="post">
		 
		 아이디 :<input type="text" id="id" name="user_id" placeholder="아이디를 입력하세요">
	     <button type="button" onclick="idCheck()">click</button>
	     <br>
	     <span id="result"></span>
	     비밀번호 :<input name="user_pw" type="password"  placeholder="비밀번호를 입력하세요">
	      <br>
	      이름 :<input name="user_name" type="text"  placeholder="이름을 입력하세요">
	      <br>
	      생년월일 :<input name="user_birthdate" type="text"  placeholder="생일을 입력하세요">
	      <br>
	      연락처 :<input name="user_phone" type="text"  placeholder="전화번호를 입력하세요">
	      <br>
	      <button type="submit">회원가입</button><br>
	     
	</form>
     
     
     <script type="text/javascript">
     function idCheck(){
          //jQuery에서 선택자역할
          var id = $("#id").val();
          
          $.ajax({
              url : "IDCheckService?user_id="+id,
              success : function(data){
                   if(data == "success"){
                        $("#result").html("<span>사용가능한 아이디입니다.<span><br>");
                   }else if(data == "fail"){
                        $("#result").html("<span>중복된 아이디입니다.<span><br>");
                   }
              }
          });
          
          
     }
</script>

	  
</body>
</html>