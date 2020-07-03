<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>index</title>

<!-- setting -->

<%@ include file="/Layout/FrontMeta.jsp" %>
<link rel="stylesheet" type="text/css" href="../styles/index.css">
<link rel="stylesheet" type="text/css" href="../styles/index_responsive.css">
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
						<div class="home_title">사이트맵</div>
						<div class="index-over"><a href="../Main/index.jsp">Home</a> <i class="fa fa-angle-right" aria-hidden="true"></i> Index <i class="fa fa-angle-right" aria-hidden="true"></i> <a href="../Index/sitemap.jsp">사이트맵</a></div>	
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Services -->

<section id="site">
	<div class="container">
			<div class="row text-center text-xs-center text-sm-left text-md-left">
				<div class="col-xs-12 col-sm-4 col-md-4 site-mar">
					<h5>About</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="../About/about.jsp"><i class="fa fa-angle-double-right"></i>#SNS이란?</a></li>
						<li><a href="../About/use.jsp"><i class="fa fa-angle-double-right"></i>이용방법</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 site-mar">
					<h5>SNS</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="../SNS/facebook.jsp"><i class="fa fa-angle-double-right"></i>페이스북</a></li>
						<li><a href="../SNS/instagram.jsp"><i class="fa fa-angle-double-right"></i>인스타그램</a></li>
						<li><a href="../SNS/twitter.jsp"><i class="fa fa-angle-double-right"></i>트위터</a></li>
						<li><a href="../SNS/ect.jsp"><i class="fa fa-angle-double-right"></i>기타</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 site-mar">
					<h5>Market</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="../Market/market.jsp"><i class="fa fa-angle-double-right"></i>등록하기</a></li>
						<li><a href="../Market/recommend.jsp"><i class="fa fa-angle-double-right"></i>추천하기</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 site-mar">
					<h5>Service</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="../Service/service.jsp"><i class="fa fa-angle-double-right"></i>공지사항</a></li>
						<li><a href="../Service/qna.jsp"><i class="fa fa-angle-double-right"></i>문의하기</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 site-mar">
					<h5>Index</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="../Index/sitemap.jsp"><i class="fa fa-angle-double-right"></i>사이트맵</a></li>
						<li><a href="../Index/userlaw.jsp"><i class="fa fa-angle-double-right"></i>개인정보처리방침</a></li>
						<li><a href="../Index/uselaw.jsp"><i class="fa fa-angle-double-right"></i>이용약관</a></li>
					</ul>
				</div>
			</div>	
	</div>
</section>

	</div>
<!-- Footer -->

<%@ include file="/Layout/Footer.jsp" %>

<!-- setting -->
<%@ include file="/Layout/BackMeta.jsp" %>
<script src="../js/index.js"></script>
</body>
</html>