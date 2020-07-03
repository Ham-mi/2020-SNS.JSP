<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>service</title>

<!-- setting -->

<%@ include file="/Layout/FrontMeta.jsp" %>
<link rel="stylesheet" type="text/css" href="../styles/service.css">
<link rel="stylesheet" type="text/css" href="../styles/service_responsive.css">
</head>
<body>

<div class="super_container">
	
<!-- Header -->
<%@ include file="/Layout/Header.jsp" %>

<!-- Menu -->

<%@ include file="/Layout/Menu.jsp" %>

	<!-- Home -->

	<div class="home">
		<div class="container">
			<div class="row text-center">
				<div class="col-lg-12">
					<div class="home_content">
						<div class="home_title">문의하기</div>
						<div class="index-over"><a href="../Main/index.jsp">Home</a> <i class="fa fa-angle-right" aria-hidden="true"></i> Service <i class="fa fa-angle-right" aria-hidden="true"></i> <a href="../Service/qna.jsp">문의하기</a></div>	
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Contact -->

	<div class="contact">
		<div class="container">
			<div class="row">

				<!-- Contact Form -->
				<div class="col-lg-12 contact_form_col">
					<div class="contact_form_container">
						<div class="contact_title">1:1 문의</div>
						<div class="contact_text">
							<p>해당 홈페이지를 이용하는데 있어 궁금한것이 있나요? <br>교숫님 저는 이 페이지 마저 건드릴 자신이 없었습니다.</p>
						</div>
						<form action="#" class="contact_form" id="contact_form">
							<div class="row contact_row">
								<div class="col-lg-6"><input type="text" class="contact_input" placeholder="Name" required="required"></div>
								<div class="col-lg-6"><input type="email" class="contact_input" placeholder="E-mail" required="required"></div>
								<div class="col-12"><input type="text" class="contact_input" placeholder="Subject" required="required"></div>
								<div class="col-12"><textarea class="contact_input contact_textarea" placeholder="Message" required="required"></textarea></div>
							</div>
							<div class="contact_button_sub">
							<button class="contact_button trans_200">send</button></div>
						</form>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	
<!-- Footer -->

<%@ include file="/Layout/Footer.jsp" %>
</div>


<!-- setting -->
<%@ include file="/Layout/BackMeta.jsp" %>
<script src="../js/service.js"></script>
</body>
</html>