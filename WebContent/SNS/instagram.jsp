<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>SNS</title>

<!-- setting -->

<%@ include file="/Layout/FrontMeta.jsp" %>
<link rel="stylesheet" type="text/css" href="../styles/sns.css">
<link rel="stylesheet" type="text/css" href="../styles/sns_responsive.css">
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
						<div class="home_title">Instagram</div>
						<div class="index-over"><a href="../Main/index.jsp">Home</a> <i class="fa fa-angle-right" aria-hidden="true"></i> SNS <i class="fa fa-angle-right" aria-hidden="true"></i> <a href="../SNS/instagram.jsp">인스타그램</a></div>	
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
						    <a class="nav-link" href="facebook.jsp"><i class="fab fa-facebook-square" aria-hidden="true"></i>  페이스북</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link nav-active" href="instagram.jsp"><i class="fab fa-instagram" aria-hidden="true"></i>  인스타그램</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="twitter.jsp"><i class="fab fa-twitter" aria-hidden="true"></i>  트위터</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" href="ect.jsp"><i class="fas fa-cloud" aria-hidden="true"></i>  기타</a>
						  </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--cap -->
	<div class="cap">
		<div class="container">
			<div class="row">
				
				<!-- check-->
				<div class="check">
					<div class="catecory">
						<div class="row">
							<div class="col-1"></div>
							<div class="col cate">
								<input type="button" value="⦁ 전체(36)" id="cate1" class="cate_but" onclick="catebut_active1()">
							</div>
							<div class="col cate">
								<input type="button" value="⦁ 의류(12)" id="cate2" class="cate_but" onclick="catebut_active2()">
							</div>
							<div class="col cate">
								<input type="button" value="⦁ 악세서리(12)" id="cate3" class="cate_but" onclick="catebut_active3()">
							</div>
							<div class="col cate">
								<input type="button" value="⦁ 잡화(12)" id="cate4" class="cate_but" onclick="catebut_active4()">
							</div>
							<div class="col-1"></div>
						</div>
					</div>
					<hr>
					<div class="search">
						<div class="search_div">
							<label>
								<span id="change6"><i class="fas fa-caret-down search_but"></i></span>
								<input type="button" value="상세검색" class="search_but" onclick="search_active()">
							</label>
						</div>
						<div class="search_top">
							<div class="row">
								<div class="col-2 search_i"><i class="fas fa-genderless"> 등록</i></div>
								<div class="cols">
									<span class="search_reg"><label><input type="radio" name="reg" value="전체" checked="checked">전체</label></span>
									<span class="search_reg"><label><input type="radio" name="reg" value="추천받은">추천받은</label></span>
									<span class="search_reg"><label><input type="radio" name="reg" value="직접등록한">직접등록한</label></span>
								</div>
							</div>
							<div class="row">
								<div class="col-2 search_i"><i class="fas fa-genderless"> 국적</i></div>
								<div class="cols">
									<span class="search_from"><label><input type="radio" name="from" value="전체" checked="checked">전체</label></span>
									<span class="search_from"><label><input type="radio" name="from" value="국내">국내</label></span>
									<span class="search_from"><label><input type="radio" name="from" value="해외">해외</label></span>
								</div>
							</div>
							<div class="row">
								<div class="col-2 search_i"><i class="fas fa-genderless"> 방식</i></div>
								<div class="cols">
									<span class="search_how"><label><input type="checkbox" name="how" value="수제">수제</label></span>
									<span class="search_how"><label><input type="checkbox" name="how" value="공구">공구</label></span>
									<span class="search_how"><label><input type="checkbox" name="how" value="직구">직구</label></span>
								</div>
							</div>
							<div class="row">
								<div class="col-2 search_i"><i class="fas fa-genderless"> 태그</i></div>
								<div class="cols">
									<span class="search_tag"><label><input type="checkbox" name="tag" value="베이직한">베이직한</label></span>
									<span class="search_tag"><label><input type="checkbox" name="tag" value="귀여운">귀여운</label></span>
									<span class="search_tag"><label><input type="checkbox" name="tag" value="화려한">화려한</label></span>
									<span class="search_tag"><label><input type="checkbox" name="tag" value="특이한">특이한</label></span>
								</div>
							</div>
							<div class="row">
								<div class="col-2"></div>
								<div class="cols">
									<span class="search_tag"><label><input type="checkbox" name="tag" value="심플한">심플한</label></span>
									<span class="search_tag"><label><input type="checkbox" name="tag" value="가벼운">가벼운</label></span>
									<span class="search_tag"><label><input type="checkbox" name="tag" value="편안한">편안한</label></span>
									<span class="search_tag"><label><input type="checkbox" name="tag" value="단정한">단정한</label></span>
								</div>
							</div>
							<div class="search_div"><input type="button" value="검색" id="search_button"></div>
						</div>
					</div>

				</div>

				<!--search-item-->
				<div class="s-item">
					<div class="row">

						<!--card-->
						<div class="col-lg-3 col-sm-6 col-12">
							<div class="card s-Citem">
							 	<img class="card-img-top" src="../images/card_1.jpg" alt="Card image cap">
							 	<div class="card-body">
							    	<p class="card-text">#인스타그램 #악세서리 #수제 #국내</p>
							 	</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 col-12">
							<div class="card s-Citem">
							 	<img class="card-img-top" src="../images/card_2.jpg" alt="Card image cap">
							 	<div class="card-body">
							    	<p class="card-text">#인스타그램 #의류 #공구 #국내</p>
							 	</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 col-12">
							<div class="card s-Citem">
							 	<img class="card-img-top" src="../images/card_3.jpg" alt="Card image cap">
							 	<div class="card-body">
							    	<p class="card-text">#인스타그램 #의류 #직구 #해외</p>
							 	</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 col-12">
							<div class="card s-Citem">
							 	<img class="card-img-top" src="../images/card_4.jpg" alt="Card image cap">
							 	<div class="card-body">
							    	<p class="card-text">#인스타그램 #의류 #공구 #해외</p>
							 	</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 col-12">
							<div class="card s-Citem">
							 	<img class="card-img-top" src="../images/card_5.jpg" alt="Card image cap">
							 	<div class="card-body">
							    	<p class="card-text">#인스타그램 #의류 #수제 #해외</p>
							 	</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 col-12">
							<div class="card s-Citem">
							 	<img class="card-img-top" src="../images/card_6.jpg" alt="Card image cap">
							 	<div class="card-body">
							    	<p class="card-text">#인스타그램 #의류 #직구 #국내</p>
							 	</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 col-12">
							<div class="card s-Citem">
							 	<img class="card-img-top" src="../images/card_7.jpg" alt="Card image cap">
							 	<div class="card-body">
							    	<p class="card-text">#인스타그램 #악세서리 #공구 #해외</p>
							 	</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 col-12">
							<div class="card s-Citem">
							 	<img class="card-img-top" src="../images/card_8.jpg" alt="Card image cap">
							 	<div class="card-body">
							    	<p class="card-text">#인스타그램 #악세서리 #공구 #해외</p>
							 	</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 col-12">
							<div class="card s-Citem">
							 	<img class="card-img-top" src="../images/card_9.jpg" alt="Card image cap">
							 	<div class="card-body">
							    	<p class="card-text">#인스타그램 #잡화 #직구 #해외</p>
							 	</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 col-12">
							<div class="card s-Citem">
							 	<img class="card-img-top" src="../images/card_10.jpg" alt="Card image cap">
							 	<div class="card-body">
							    	<p class="card-text">#인스타그램 #잡화 #수제 #국내</p>
							 	</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 col-12">
							<div class="card s-Citem">
							 	<img class="card-img-top" src="../images/card_11.jpg" alt="Card image cap">
							 	<div class="card-body">
							    	<p class="card-text">#인스타그램 #의류 #직구 #해외</p>
							 	</div>
							</div>
						</div>
						<div class="col-lg-3 col-sm-6 col-12">
							<div class="card s-Citem">
							 	<img class="card-img-top" src="../images/card_12.jpg" alt="Card image cap">
							 	<div class="card-body">
							    	<p class="card-text">#인스타그램 #잡화 #수제 #국내</p>
							 	</div>
							</div>
						</div>

						<!--search button next-->
						<div class="s-div search_div">
							<input type="button" value="1" class="s-but" id="s-but1" onclick="sbut_active1()">
							<input type="button" value="2" class="s-but" id="s-but2" onclick="sbut_active2()">
							<input type="button" value="3" class="s-but" id="s-but3" onclick="sbut_active3()">
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
<script src="../js/sns.js"></script>
</body>
</html>