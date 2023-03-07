<%@page import="java.util.ArrayList"%>
<%@page import="com.youthdew.model.reservationInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>청년이슬 공유공간 리뷰</title>
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
<link rel="stylesheet" type="text/css" href="styles/contact.css">
<link rel="stylesheet" type="text/css" href="styles/contact_responsive.css">
<link rel="stylesheet" type="text/css" href="styles/newstyle.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<style>
    #myform fieldset{
        display: inline-block;
        direction: rtl;
        border:0;
    }
    #myform fieldset legend{
        text-align: right;
    }
    #myform input[type=radio]{
        display: none;
    }
    #myform label{
        font-size: 3em;
        color: transparent;
        text-shadow: 0 0 0 #f0f0f0;
    }
    #myform label:hover{
        text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
    }
    #myform label:hover ~ label{
        text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
    }
    #myform input[type=radio]:checked ~ label{
        text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
    }	
</style>
</head>
<body>

<%
	int shared_space_seq = Integer.parseInt(request.getParameter("shared_space_seq"));
	String center_name = request.getParameter("center_name");
	String user_id = request.getParameter("user_id");
	String shared_space_name = request.getParameter("shared_space_name");
	int reserv_seq = Integer.parseInt(request.getParameter("reserv_seq"));
	
%>
<div class="super_container">
	
	<!-- Header -->
	<header id="headers"></header>

	<!-- Home -->

	<div class="home">
		<div class="background_image" style="background-image:url(https://www.youthcenter.go.kr/framework/filedownload/getImage.do?filePathName=K43kYCzEpw54N3DsTLz6bCbqLMNkmNrFX8SJ2a%2F8F9pB7HUHHtIbNJnpKz1TxX7%2FtWBDU34mAyiLcA53hoq2zQ%3D%3D)"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content text-center">
							<div class="home_title">리뷰 등록</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Contact -->

	<div class="contact">
		<div class="container">
				<!-- Contact Content -->
				<div class="col-lg-9">
					<div class="contact_content">
						<div class="contact_title"><h3>리뷰 작성</h3></div>
						<div class="contact_list">
							<ul>
								<li><%= center_name%></li>
								<li><%= shared_space_name%></li>
								<li><%= shared_space_seq%></li>
							</ul>
						</div>
						<div>
							<div class="contact_form_container">
							<form action="ReviewService" method="post" class="contact_form" id="contact_form">
								<input type="hidden" name="shared_space_seq" id="shared_space_seq" value="<%=shared_space_seq%>" required="required">
								<input type="hidden" name="reserv_seq" id="reserv_seq" value="<%=reserv_seq%>" required="required">
								<div class="row">
									<div class="col-md-6 input_container">
										<input type="text" class="contact_input" name="user_id" id="user_id" value="<%=user_id%>" required="required" readonly/>
									</div>

								</div>
								<div class="input_container"><textarea class="contact_input contact_textarea" name="content" id="content" placeholder="Message" required="required"></textarea></div>
							<div class="mb-3" id="myform">
								<fieldset>
								 	<span class="text-bold">별점을 선택해주세요</span>
								  	<input type="radio" name="reviewStar" value="5" id="rate1"><label
								                for="rate1">★</label>
								    <input type="radio" name="reviewStar" value="4" id="rate2"><label
								                for="rate2">★</label>
								    <input type="radio" name="reviewStar" value="3" id="rate3"><label
								                for="rate3">★</label>
								    <input type="radio" name="reviewStar" value="2" id="rate4"><label
								                for="rate4">★</label>
								    <input type="radio" name="reviewStar" value="1" id="rate5"><label
								                for="rate5">★</label>
								</fieldset><br>
							</div>
								<input type="submit" value="등록" class="contact_button"/>
							</form>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
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
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/contact.js"></script>
<script src="js/listevent.js"></script>
<script src="js/htmlplus.js"></script>
</body>
</html>