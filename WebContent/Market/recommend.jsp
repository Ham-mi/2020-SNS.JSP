<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
<link rel="stylesheet" type="text/css" href="../styles/market.css">
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
						<div class="home_title">추천하기</div>
						<div class="index-over"><a href="../Main/index.jsp">Home</a> <i class="fa fa-angle-right" aria-hidden="true"></i> market <i class="fa fa-angle-right" aria-hidden="true"></i> <a href="../Market/recommend.jsp">추천하기</a></div>		
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
					<form action="/SNSShop/Market/recommendfunction.jsp" method="post" name="recommend">
						<div class="r_main">
							<h2>마켓추천</h2>
						</div>
						<div class="r_sub">
							<div class="row">
								<div class="col-2">
									<h4>추천유저</h4>
								</div>
								<div class="col r_sub_div">
									<c:choose>
										<c:when test="${userid!=null}">
											<input type="text" name="reuser" placeholder="없을 시 빈칸" class="contact_input" value="${userid}" readonly/>
										</c:when>
										<c:otherwise>
											<input type="text" name="reuser" placeholder="없을 시 빈칸" class="contact_input">
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>SNSID</h4>
								</div>
								<div class="col r_sub_div">
									<input type="text" name="resnsid" placeholder="snsid" class="contact_input">
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>숍 이름</h4>
								</div>
								<div class="col r_sub_div">
									<input type="text" name="rename" placeholder="shopname" class="contact_input">
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>분류</h4>
								</div>
								<div class="col r_radio">
									<label><input type="radio" name="rediv" value="face" checked> 페이스북</label>
									<label><input type="radio" name="rediv" value="insta"> 인스타그램</label>
									<label><input type="radio" name="rediv" value="twit" > 트위터</label>
									<label><input type="radio" name="rediv" value="ect" > 기타</label>
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>카테고리</h4>
								</div>
								<div class="col r_check">
									<label><input type="checkbox" name="recate" value="dress"> 의류</label>
									<label><input type="checkbox" name="recate" value="clip"> 악세서리</label>
									<label><input type="checkbox" name="recate" value="stuff"> 잡화</label>
									<label><input type="checkbox" name="recate" value="ect">기타</label>
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>주소</h4>
								</div>
								<div class="col">
									<input type="text" name="readdr" placeholder="sns주소" class="contact_input">
								</div>
								<div class="col-1"></div>
							</div>
							<div class="row">
								<div class="col-2">
									<h4>추천이유</h4>
								</div>
								<div class="col">
									<textarea class="contact_input contact_textarea" placeholder="추천이유는 해당 sns샵에 전달 됩니다." name="rereason"></textarea>
								</div>
								<div class="col-1"></div>
							</div>
							<div class="r_but">
								<button type="button" class="contact_button trans_200" onclick="javascript:check()">등록하기</button>
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
<script type="text/javascript" src="../js/market.js"></script>
</body>
</html>