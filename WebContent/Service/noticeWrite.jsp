<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>notice</title>

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
		<div class="text-center row">
			<div class="col-lg-12">
				<div class="home_content">
					<div class="home_title">공지사항</div>
					<div class="index-over"><a href="../Main/index.jsp">Home</a> <i class="fa fa-angle-right" aria-hidden="true"></i> Service <i class="fa fa-angle-right" aria-hidden="true"></i> <a href="../Service/service.jsp">공지사항</a></div>	
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Contact -->
<%@ include file="writeForm.jsp" %>

<!-- Footer -->
<%@ include file="/Layout/Footer.jsp" %>
</div>

<!-- setting -->
<%@ include file="/Layout/BackMeta.jsp" %>
<script src="../js/service.js"></script>
</body>
</html>