<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>#SNS</title>
<!-- setting -->

<%@ include file="/Layout/FrontMeta.jsp" %>
<link rel="stylesheet" type="text/css" href="../styles/main_styles.css?v=2">
<link rel="stylesheet" type="text/css" href="../styles/responsive.css">
</head>
<body>

<div class="super_container">
	
	<!-- Header -->

<%@ include file="/Layout/Header.jsp" %>
	<!-- Menu -->

<%@ include file="/Layout/Menu.jsp" %>

	<!-- Home -->

	<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="../images/index1.png" data-speed="0.8"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content text-center">
							<div class="home_title"><span>#</span>SNS</div>
							<div class="domain_search">
								<div class="domain_search_background"></div>
								<form action="#" class="domain_search_form" id="domain_search_form">
									<input type="text" class="domain_search_input" placeholder="#" required="required">
									<button class="domain_search_button"><i class="fas fa-search"></i></button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Domain Pricing -->

	<div class="domain_pricing">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="domain_pricing_content">
						<ul class="d-flex flex-md-row flex-column align-items-center justify-content-md-between justify-content-center nav nav-tabs">
						  <li class="nav-item">
						    <a class="nav-link" href="../SNS/facebook.jsp"><i class="fab fa-facebook-square" aria-hidden="true"></i>  페이스북</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="../SNS/instagram.jsp"><i class="fab fa-instagram" aria-hidden="true"></i>  인스타그램</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="../SNS/twitter.jsp"><i class="fab fa-twitter" aria-hidden="true"></i>  트위터</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="../SNS/ect.jsp"><i class="fas fa-cloud" aria-hidden="true"></i>  기타</a>
						  </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Why Choose Us -->
	
<%@ include file="indexitem.jsp" %>

<hr class="why_hr">

	<!-- Pricing -->

	<div class="pricing">
		<div class="container">
			<div class="row">
				<div class="col">
					<!-- Pricing Item -->
					<div class="pricing_item trans_200">
						<div class="pricing_item_background trans_200"></div>
						<div class="pricing_title_container d-flex flex-column align-items-center justify-content-start">
							<div class="pricing_title_background trans_200">
								<div class="pricing_title_background trans_200">
								<svg class="waves" width="100%" height="100%" viewBox="0 0 1920 218" preserveAspectRatio="none">
									<path class="wave_path trans_200" fill="url(#grad_1)" d="M0,0 V210 S500,218 860,193  S1400,125 1920,155 V0 H0"></path>
								</svg>
								</div>
							</div>
							<div class="pricing_title"> </div>
							<div class="pricing_price pricing_font">#SNS는 어떻게 사용할까요?</div>
						</div>
						<div class="pricing_content d-flex flex-column align-items-center justify-content-start">
							<div class="button pricing_button trans_200"><a href="../About/use.jsp">알아보기</a></div>
						</div>
					</div>
				</div>
			</div>
			<div class="row pricing_row">
				
				<!-- Pricing Item -->
				<div class="col-lg-6">
					<div class="pricing_item trans_200">
						<div class="pricing_item_background trans_200"></div>
						<div class="pricing_title_container d-flex flex-column align-items-center justify-content-start">
							<div class="pricing_title_background trans_200">
								<svg class="waves" width="100%" height="100%" viewBox="0 0 1920 218" preserveAspectRatio="none">
									<path class="wave_path trans_200" fill="url(#grad_1)" d="M0,0 V210 S500,218 860,193  S1400,125 1920,155 V0 H0"></path>
									<defs>
										<linearGradient id="grad_1">
											<stop offset="0%" stop-color="#487fee" />
											<stop offset="100%" stop-color="#b632fa" />
										</linearGradient>
										<linearGradient id="grad_2">
											<stop offset="0%" stop-color="#9cb9f6" />
											<stop offset="100%" stop-color="#d691fc" />
										</linearGradient>
									</defs>
								</svg>
							</div>
							<div class="pricing_title">혼자 알고있기 아깝다면?</div>
							<div class="pricing_price">추천하기<div>이용자편</div></div>
						</div>
						<div class="pricing_content d-flex flex-column align-items-center justify-content-start">
							<div class="pricing_list">
								<ul class="d-flex flex-column align-items-center justify-content-start">
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>혼자만 알고있는 쇼핑몰이 있나요?</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>다른사람과도 공유하고 싶다면</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>간편하고 빠르게!</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>#sns에서도 만나보아요</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div>X</div>
										<div>바로 등록되지 않습니다.</div>
									</li>
								</ul>
							</div>
							<div class="pricing_info"><a href="#"><div>i</div></a></div>
							<div class="button pricing_button trans_200"><a href="../Market/recommend.jsp">마켓 추천</a></div>
						</div>
					</div>
				</div>

				<!-- Pricing Item -->
				<div class="col-lg-6">
					<div class="pricing_item trans_200">
						<div class="pricing_item_background trans_200"></div>
						<div class="pricing_title_container d-flex flex-column align-items-center justify-content-start">
							<div class="pricing_title_background trans_200">
								<svg class="waves" width="100%" height="100%" viewBox="0 0 1920 218" preserveAspectRatio="none">
									<path class="wave_path trans_200" fill="url(#grad_1)" d="M0,0 V210 S500,218 860,193  S1400,125 1920,155 V0 H0"></path>
								</svg>
							</div>
							<div class="pricing_title">내 쇼핑몰을 알리고싶다면?</div>
							<div class="pricing_price">등록하기<div>운영자편</div></div>
						</div>
						<div class="pricing_content d-flex flex-column align-items-center justify-content-start">
							<div class="pricing_list">
								<ul class="d-flex flex-column align-items-center justify-content-start">
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>쇼핑몰을 오픈하셨나요?</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>광고하기 마땅치 않다면</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>손쉽고 꼼꼼하게!</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>#sns에서 시작해보세요</div>
									</li>
									<li class="d-flex flex-row align-items-center justify-content-start">
										<div class="pricing_icon d-flex flex-column align-items-center justify-content-center">
											<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 26 26" enable-background="new 0 0 26 26" width="26px" height="26px">
												<path class="check_svg trans_200" d="m.3,14c-0.2-0.2-0.3-0.5-0.3-0.7s0.1-0.5 0.3-0.7l1.4-1.4c0.4-0.4 1-0.4 1.4,0l.1,.1 5.5,5.9c0.2,0.2 0.5,0.2 0.7,0l13.4-13.9h0.1v-8.88178e-16c0.4-0.4 1-0.4 1.4,0l1.4,1.4c0.4,0.4 0.4,1 0,1.4l0,0-16,16.6c-0.2,0.2-0.4,0.3-0.7,0.3-0.3,0-0.5-0.1-0.7-0.3l-7.8-8.4-.2-.3z" fill="#606ef1"/>
											</svg>
										</div>
										<div>바로 등록됩니다.</div>
									</li>
								</ul>
							</div>
							<div class="pricing_info"><a href="#"><div>i</div></a></div>
							<div class="button pricing_button trans_200"><a href="../Market/market.jsp">마켓 등록</a></div>
						</div>
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="pricing_text text-center">
						<p>추천을 받은 쇼핑몰은 해당 쇼핑몰의 동의를 얻은후 등록됩니다.</p>
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

<script src="../js/custom.js"></script>
</body>
</html>