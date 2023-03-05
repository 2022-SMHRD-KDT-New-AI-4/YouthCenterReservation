<%@page import="com.youthdew.model.MessageVO"%>
<%@page import="com.youthdew.model.MemberDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.youthdew.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="styles/linefont.css">
<title>Message</title>

    <style>
        .titlebox{
            margin-left:10px;
        }

        .letterx{
            left:90%;
            position: absolute;
        }

        .xbox{
            height:37px;
            margin-left:10px;
            
        }

        .msgbox{
            height: 100px;
            border: 1px solid rgb(209, 205, 205);
            margin-left: 10px;
            margin-right: 10px;
            border-radius: 5px;
            margin-top: 10px;
        }

        .txtbox{
            margin-left:10px;
        }


    </style>
</head>
<body>
	<%
	//loginM 키값이 지정되어있는 세션 값
	MemberVO loginM = (MemberVO)session.getAttribute("loginM");
	MemberDAO dao = new MemberDAO();
	List<MessageVO> list = dao.selectMessage(loginM.getUser_id());
	int cnt = dao.readMessage(loginM.getUser_id());
	
	%>

    <div class="titlebox">
    <h3>받은 메세지</h3>
    <hr>
    </div>
	<% for(int i=0;i<list.size();i++) { %>
	
    <div class="msgbox">
        <div class="xbox">
            <a href="deleteMessageService?msg_seq=<%=list.get(i).getMsg_seq()%>" class="letterx"><img src="./images/ic_close.svg"></a>
            
        </div>
        <div class="txtbox">
            <span><b><%=list.get(i).getMsg_usetime() %></b></span><br>
            <span><%=list.get(i).getMsg_content() %></span>

        </div>
    </div>
    <%} %>



</body>
</html>