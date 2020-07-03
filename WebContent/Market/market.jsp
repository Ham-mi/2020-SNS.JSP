<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	String msg=null;
	msg = (String)request.getAttribute("msg");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Market</title>

<!-- setting -->

<%@ include file="/Layout/FrontMeta.jsp" %>
<link rel="stylesheet" type="text/css" href="../styles/market.css?v=2">
<link rel="stylesheet" type="text/css" href="../styles/market_responsive.css">
<script type="text/javascript">

	var jsmsg ='<%=msg%>';
	if(jsmsg!=='null'){
	alert('<%=msg%>');
	}
</script>
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
						<div class="home_title">등록하기</div>
						<div class="index-over"><a href="../Main/index.jsp">Home</a> <i class="fa fa-angle-right" aria-hidden="true"></i> Market <i class="fa fa-angle-right" aria-hidden="true"></i> <a href="../Market/market.jsp">등록하기</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>

<!--recommended-->
	<div class="recommended">
		<div class="container">
			<div class="row">
				<div class="r_box">
					<form action="/SNSShop/Market/marketfunction.jsp" method="post" name="market">
						<div class="r_main">
							<h2>마켓등록</h2>
						</div>
						<div class="r_sub">
						
							<div class="row">
								<div class="col-2">
									<h4>등록계정</h4>
								</div>
								<div class="col r_sub_div">
									<c:choose>
										<c:when test="${userid!=null}">
											<input type="text" name="userid" placeholder="계정당 1번만 등록가능" class="contact_input" value="${userid}" readonly/>
										</c:when>
										<c:otherwise>
											<input type="text" name="userid" placeholder="계정당 1번만 등록가능" class="contact_input" readonly>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>숍아이디</h4>
								</div>
								<div class="col r_sub_div">
									<input type="text" name="snsid" placeholder="snsid" class="contact_input" maxlength="25">
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>숍이름</h4>
								</div>
								<div class="col r_sub_div">
									<input type="text" name="snsname" placeholder="snsname" class="contact_input" maxlength="20">
								</div>
							</div>
							<div class="row">
								<div class="col-2">
								</div>
								<div class="col r_radio">
									<label><input type="radio" name="snsdiv" value="face" checked> 페이스북</label>
									<label><input type="radio" name="snsdiv" value="insta"> 인스타그램</label>
									<label><input type="radio" name="snsdiv" value="twit" > 트위터</label>
									<label><input type="radio" name="snsdiv" value="ect" > 기타</label>
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>카테고리</h4>
								</div>
								<div class="col r_check">
									<label><input type="checkbox" name="snscate" value="dress"> 의류</label>
									<label><input type="checkbox" name="snscate" value="clip"> 악세서리</label>
									<label><input type="checkbox" name="snscate" value="stuff"> 잡화</label>
									<label><input type="checkbox" name="snscate" value="ect"> 기타</label>
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>주소</h4>
								</div>
								<div class="col">
									<input type="text" name="snsaddr" placeholder="sns주소" class="contact_input">
								</div>
								<div class="col-1"></div>
							</div>

							<div class="row">
								<div class="col-2">
									<h4>국적</h4>
								</div>
								<div class="col r_radio">
									<span class="search_from"><label><input type="radio" name="snscountry" value="all" checked/>전체</label></span>
									<span class="search_from"><label><input type="radio" name="snscountry" value="in">국내</label></span>
									<span class="search_from"><label><input type="radio" name="snscountry" value="out">해외</label></span>
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>방식</h4>
								</div>
								<div class="col r_check">
									<span class="search_how"><label><input type="checkbox" name="snsway" value="S">수제</label></span>
									<span class="search_how"><label><input type="checkbox" name="snsway" value="G">공구</label></span>
									<span class="search_how"><label><input type="checkbox" name="snsway" value="D">직구</label></span>
									<span class="search_how"><label><input type="checkbox" name="snsway" value="E">기타</label></span>
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>태그</h4>
								</div>
								<div class="col r_check">
									<span class="search_tag"><label><input type="checkbox" name="snstag" value="basict">베이직한</label></span>
									<span class="search_tag"><label><input type="checkbox" name="snstag" value="cutet">귀여운</label></span>
									<span class="search_tag"><label><input type="checkbox" name="snstag" value="fancyt">화려한</label></span>
									<span class="search_tag"><label><input type="checkbox" name="snstag" value="uniquet">특이한</label></span>
								</div>
							</div>
							<div class="row">
								<div class="col-2"></div>
								<div class="col r_check">
									<span class="search_tag"><label><input type="checkbox" name="snstag" value="simplet">심플한</label></span>
									<span class="search_tag"><label><input type="checkbox" name="snstag" value="lightt">가벼운</label></span>
									<span class="search_tag"><label><input type="checkbox" name="snstag" value="comfortablet">편안한</label></span>
									<span class="search_tag"><label><input type="checkbox" name="snstag" value="tidyt">단정한</label></span>
								</div>
							</div>
							<div class="row" id="addtagdis">
								<div class="col-2">
									<h4>추가태그</h4>
								</div>
								<div class="col r_check">
									<span class="search_tag" id="addtagcheck0"></span>
									<span class="search_tag" id="addtagcheck1"></span>
									<span class="search_tag" id="addtagcheck2"></span>
									<span class="search_tag" id="addtagcheck3"></span>
									<span class="search_tag" id="addtagcheck4"></span>
								</div>
							</div>
							<div class="row">
								<div class="col-2"></div>
								<div class="col r_sub_div">
									<input type="text" name="snsaddtag" placeholder="직접입력 5개까지 가능." class="contact_input" maxlength="7">
									<button class="contact_button trans_200 but_sub" type="button" onclick="javascript:addtagclick()">+</button>
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>이미지</h4>
								</div>
								<div class="col r_sub_div">
									<div class="fileBox">
										<input type="text" class="fileName contact_input" readonly="readonly" name="snsimage">
										<label for="uploadBtn" class="btn_file contact_button trans_200 but_sub">찾아보기</label>
										<input type="file" id="uploadBtn" class="uploadBtn">
									</div>
								</div>
							</div>
							<div class="r_but">
								<button class="contact_button trans_200" type="button" onclick="javascript:marketcheck()">등록하기</button>
								<button class="contact_button trans_200">취소하기</button>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>		
	</div>
<!-- Footer -->
<%@ include file="/Layout/Footer.jsp" %>
</div>


<!-- setting -->
<%@ include file="/Layout/BackMeta.jsp" %>
<script src="../js/market.js?v=2"></script>
</body>
</html>