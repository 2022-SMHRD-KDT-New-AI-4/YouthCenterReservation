<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
            border-radius: 10px;
            margin-top: 10px;
        }

        .txtbox{
            margin-left:10px;
        }


    </style>
</head>
<body>
    <div class="titlebox">
    <h3>받은 메세지</h3>
    <hr>
    </div>

    <div class="msgbox">
        <div class="xbox">
            <a href="#" class="letterx"><img src="./images/ic_close.svg"></a>
            
        </div>
        <div class="txtbox">
            <span><b>이용일시: 2023/03/02 13:00~15:00</b></span><br>
            <span>광주청년센터 공유공간3이(가) 예약되었습니다.</span>

        </div>
    </div>

    <div class="msgbox">
        <div class="xbox"><a href="#" class="letterx"><img src="./images/ic_close.svg"></a></div>
        <div class="txtbox">
            <span><b>이용일시: 2023/03/03 14:00~15:00</b></span><br>
            <span>광주청년센터 공유공간5을(를) 예약대기 신청했습니다.</span>

        </div>
    </div>

    <div class="msgbox">
        <div class="xbox"><a href="#" class="letterx"><img src="./images/ic_close.svg"></a></div>
        <div class="txtbox">
            <span><b>이용일시: 2023/03/03 14:00~15:00</b></span><br>
            <span>광주청년센터 공유공간5이(가) 예약가능합니다.</span>

        </div>
    </div>


</body>
</html>