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
						<div class="home_title">이용약관</div>
						<div class="index-over"><a href="../Main/index.jsp">Home</a> <i class="fa fa-angle-right" aria-hidden="true"></i> Index <i class="fa fa-angle-right" aria-hidden="true"></i> <a href="../Index/uselaw.jsp">이용약관</a></div>	
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Features -->

	<div class="features">
		<div class="container">
			<div class="row row-lg-eq-height">
				
				<!-- Features Content -->
				<div class="col">
					<div class="features_content text-center">
						
						<!-- Feature -->
						<div class="feature d-flex flex-row align-items-start justify-content-start">
							<div class="feature_content margin_auto">
								<div class="feature_title">#sns 서비스 이용약관은 다음과 같은 내용을 담고 있습니다.</div>
								<div class="feature_text feature_text_hover">
									<p>
										여러분을 환영합니다.</p><p>
										회원으로 가입하시면 #sns 서비스를 보다 편리하게 이용할수 있습니다.</p><p>
										여러분이 제공한 정보를 소중히 다룰 것 입니다.</p><p>
										여러분의 개인정보를 소중히 보호합니다.</p><p>
										타인의 권리를 존중해 주세요.</p><p>
										#sns 서비스 이용과 관련하여 몇 가지 주의사항이 있습니다.</p><p>
										#sns 에서 제공하는 적립금을 활용해 보세요.</p><p>
										부득이 서비스 이용을 제한할 경우 합리적인 절차를 준수합니다.</p><p>
										#sns의 잘못은 #sns가 책임집니다.</p><p>
										언제든지 #sns 서비스 이용계약을 해지하실 수 있습니다.</p><p>
										서비스 중단 또는 변경 시 꼭 알려드리겠습니다.</p><p>
										주요 사항을 잘 안내하고 여러분의 소중한 의견에 귀 기울이겠습니다.</p><p>
										여러분이 쉽게 알 수 있도록 약관 및 운영정책을 게시하며 사전 공지 후 개정합니다.</p><p>
									</p>
								</div>
							</div>
						</div>

						<!-- Feature -->
						<div class="feature d-flex flex-row align-items-start justify-content-start">
							<div class="feature_content margin_auto">
								<div class="feature_title">픽사베이 이미지(전체)</div>
								<div class="feature_text">
									<p><a href="https://pixabay.com/ko/photos/">https://pixabay.com/ko/photos/</a><br>
										<상업적사용가능/출처 밝히지 않아도 됨></p>
								</div>
							</div>
						</div>
						<!-- Feature -->
						<div class="feature d-flex flex-row align-items-start justify-content-start">
							<div class="feature_content margin_auto">
								<div class="feature_title">약관 참조(네이버)</div>
								<div class="feature_text">
									<p><a href="https://policy.naver.com/policy/service.jsp">https://policy.naver.com/policy/service.jsp</a></p>
								</div>
							</div>
						</div>

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
<script src="../js/index.js"></script>
</body>
</html>