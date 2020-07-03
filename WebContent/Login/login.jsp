<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String msg=null;
	msg = (String)request.getAttribute("msg");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<script type="text/javascript">

	var jsmsg ='<%=msg%>';
	if(jsmsg!=='null'){
	alert('<%=msg%>');
	}
</script>
<!-- setting -->

<%@ include file="/Layout/FrontMeta.jsp" %>
<link rel="stylesheet" type="text/css" href="../styles/login.css">
<link rel="stylesheet" type="text/css" href="../styles/login_responsive.css">



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
			<div class="row">
				<div class="col">
					<div class="home_content text-center">
						<div class="home_title">로그인</div>
						<div class="index-over"><a href="../Main/index.jsp">Home</a> <i class="fa fa-angle-right" aria-hidden="true"></i> <a href="../Login/login.jsp">Login</a></div>		
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--login -->
	<div id="LoginForm">
	    <div class="container">
	        <div class="login-form">
	            <div class="main-div">
	            	<p>기본 계정  ID: testid /Password: 1234</p>
	                <form id="login" action="/SNSShop/Login/loginfunction.jsp" method="post" name="login">
	                    <div class="form-group">
	                        <input type="text" class="form-control" id="inputEmail" placeholder="Id" name="userid">
	                    </div>
	                    <div class="form-group">
	                        <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="userpw">
	                    </div>
	                    <div class="forgot">
	                        <a href="#">Find Id</a> / 
	                        <a href="#">Password</a>
	                    </div>
	                    <button type="button" class="btn btn-primary" onclick="btn_click()">Login</button>
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
<script src="../js/login.js?v=3"></script>
</body>
</html>