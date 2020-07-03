<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
    String path =request.getRequestURI();
    String userid = (String)session.getAttribute("userid");
    String username = (String)session.getAttribute("username");
   // System.out.println(userid);
%>
<!-- Header -->

	<header class="header trans_400">
		<div class="header_content d-flex flex-row align-items-center justify-content-start trans_400">
			<div class="logo"><a href="../Main/index.jsp"><span>#</span>SNS</a></div>
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-2">
						<nav class="main_nav">
							<ul class="d-flex flex-row align-items-center justify-content-start">
								<li>
									<div class="dropdown">
									  <div class="dropbtn <%if(path.equals("/SNSShop/About/about.jsp") ||path.equals("/SNSShop/About/use.jsp")) {%>active<%}%>">About</div>
									  <div class="dropdown-content text-center">
									    <a href="../About/about.jsp">#SNS란?</a>
									    <a href="../About/use.jsp" class="bottom-line">이용방법</a>
									  </div>
									</div>
								</li>
								<li>
									<div class="dropdown">
									  <div class="dropbtn <%if(path.equals("/SNSShop/SNS/facebook.jsp") ||path.equals("/SNSShop/SNS/instagram.jsp") || path.equals("/SNSShop/SNS/twitter.jsp")|| path.equals("/SNSShop/SNS/ect.jsp")) {%>active<%}%>">SNS</div>
									  <div class="dropdown-content text-center margin-left">
									    <a href="../SNS/facebook.jsp">페이스북</a>
									    <a href="../SNS/instagram.jsp">인스타그램</a>
									    <a href="../SNS/twitter.jsp">트위터</a>
									    <a href="../SNS/ect.jsp" class="bottom-line">기타</a>
									  </div>
									</div>
								</li>
								<li>
									<div class="dropdown">
									  <div class="dropbtn <%if(path.equals("/SNSShop/Market/market.jsp") ||path.equals("/SNSShop/Market/recommend.jsp")) {%>active<%}%>">Market</div>
									  <div class="dropdown-content text-center">
									    <a href="../Market/market.jsp">등록하기</a>
									    <a href="../Market/recommend.jsp" class="bottom-line">추천하기</a>
									  </div>
									</div>
								</li>
								<li>
									<div class="dropdown">
									  <div class="dropbtn <%if(path.equals("/SNSShop/Service/service.jsp") ||path.equals("/SNSShop/Service/qna.jsp")) {%>active<%}%>">Service</div>
									  <div class="dropdown-content text-center">
									    <a href="../Service/service.jsp">공지사항</a>
									    <a href="../Service/qna.jsp" class="bottom-line">문의하기</a>
									  </div>
									</div>
								</li>
								<li>
									<div class="dropdown">
									  <div class="dropbtn <%if(path.equals("/SNSShop/Index/sitemap.jsp") ||path.equals("/SNSShop/Index/userlaw.jsp")||path.equals("/SNSShop/Index/uselaw.jsp")) {%>active<%}%>">Index</div>
									  <div class="dropdown-content text-center">
									    <a href="../Index/sitemap.jsp">사이트맵</a>
									    <a href="../Index/userlaw.jsp">개인정보처리방침</a>
									    <a href="../Index/uselaw.jsp" class="bottom-line">이용약관</a>
									  </div>
									</div>
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<div class="header_right d-flex flex-row align-items-center justify-content-start">

				<!-- Header Links -->
				<div class="header_links">
					<ul class="d-flex flex-row align-items-center justify-content-start">
					<%if(userid==null){ %>
						<li><a <%if(path.equals("/SNSShop/Login/signup.jsp")) {%>class="active"<%}%> href="../Login/signup.jsp">Sign Up</a></li>
						<li><a <%if(path.equals("/SNSShop/Login/login.jsp")) {%>class="active"<%}%> href="../Login/login.jsp">Login</a></li>
					<%} else { %>
						<li><a <%if(path.equals("/SNSShop/Login/mypage.jsp")) {%>class="active"<%}%> href="../Login/mypage.jsp">MyPage</a></li>
						<li><a <%if(path.equals("/SNSShop/Login/logout.jsp")) {%>class="active"<%}%> href="../Login/logout.jsp">Logout</a></li>
					<% } %>
					</ul>
				</div>

				<!-- Hamburger -->
				<div class="hamburger"><i class="fa fa-bars" aria-hidden="true"></i></div>
			</div>	
		</div>
	</header>
    