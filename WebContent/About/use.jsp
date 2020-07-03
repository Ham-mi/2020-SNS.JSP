<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>About us</title>

<!-- setting -->

<%@ include file="/Layout/FrontMeta.jsp" %>
<link rel="stylesheet" type="text/css" href="../styles/about.css">
<link rel="stylesheet" type="text/css" href="../styles/about_responsive.css">
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
						<div class="home_title">이용방법</div>
						<div class="index-over"><a href="../Main/index.jsp">Home</a> <i class="fa fa-angle-right" aria-hidden="true"></i> About <i class="fa fa-angle-right" aria-hidden="true"></i> <a href="../About/use.jsp">이용방법</a></div>	
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Team -->

	<div class="team">
		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-6">
					<div class="section_title_container text-center">
						<div class="section_title"><h2>등록자</h2></div>
						<div class="text-center">
							<img src="../images/pic_1.png" class="rounded team_img" alt="등록자이미지">
						</div>
						<div class="team_text">
							<p>회원가입후 마켓을 등록할 수 있습니다!<br>손쉬운 관리! 얼른 신청하세요!</p>
						</div>
					</div>
				</div>
				<div class="col-12 col-lg-6">
					<div class="section_title_container text-center">
						<div class="section_title"><h2>이용자</h2></div>
						<div class="text-center">
							<img src="../images/pic_2.png" class="rounded team_img" alt="이용자이미지">
						</div>
						<div class="team_text">
							<p>원하는 마켓을 추천할 수 있습니다!<br>후기를 통한 적립금! 쌓아보세요!</p>
						</div>
					</div>
				</div>
				<div class="col-12 margin-top">
					<div class="section_title_container text-center">
						<div class="section_title"><h2>홈페이지 구상도</h2></div>
						<div class="team_text">
							<p>사실 이용방법에 작성할게 없습니다. <br>
								원하는 정도의 절차가 구성되지 않아 안내할 부분이 없어서 <br>
								이제까지 작성한 홈페이지의 구상도 입니다.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-12 text-center margin-top">
					<img src="../images/do1.png" alt="제작과정1" class="img-thumbnail ">
				</div>
				<div class="col-lg-6 col-12 text-center margin-top">
					<img src="../images/do5.png" alt="제작과정2" class="img-thumbnail ">
				</div>
				<div class="col-xl-3 col-lg-6 col-12 margin-top">
					<img src="../images/do3.png" alt="제작과정3" class="img-thumbnail ">
				</div>
				<div class="col-xl-3 col-lg-6 col-12 margin-top">
					<img src="../images/do4.png" alt="제작과정4" class="img-thumbnail ">
				</div>
				<div class="col-xl-3 col-lg-6 col-12 margin-top">
					<img src="../images/do9.png" alt="제작과정5" class="img-thumbnail ">
				</div>
				<div class="col-xl-3 col-lg-6 col-12 margin-top">
					<img src="../images/do10.png" alt="제작과정6" class="img-thumbnail ">
				</div>
				<div class="col-xl-3 col-lg-6 col-12 margin-top">
					<img src="../images/do2.png" alt="제작과정7" class="img-thumbnail ">
				</div>
				<div class="col-xl-3 col-lg-6 col-12 margin-top">
					<img src="../images/do6.png" alt="제작과정8" class="img-thumbnail ">
				</div>
				<div class="col-xl-3 col-lg-6 col-12 margin-top">
					<img src="../images/do7.png" alt="제작과정9" class="img-thumbnail ">
				</div>
				<div class="col-xl-3 col-lg-6 col-12 margin-top">
					<img src="../images/do8.png" alt="제작과정10" class="img-thumbnail ">
				</div>
				<div class="col-lg-6 col-12 margin-top">
					<img src="../images/do11.png" alt="제작과정11" class="img-thumbnail ">
				</div>
				<div class="col-lg-6 col-12 margin-top">
					<img src="../images/do12.png" alt="제작과정12" class="img-thumbnail ">
				</div>

			</div>
		</div>
	</div>
<!-- Footer -->

<%@ include file="/Layout/Footer.jsp" %>
</div>


<!-- setting -->
<%@ include file="/Layout/BackMeta.jsp" %>
<script src="../js/about.js"></script>
</body>
</html>