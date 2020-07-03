<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Sign Up</title>

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
						<div class="home_title">회원가입</div>
						<div class="index-over"><a href="../Index/index.jsp">Home</a> <i class="fa fa-angle-right" aria-hidden="true"></i> <a href="../Login/signup.jsp">Sign Up</a></div>		
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- sign up -->
<div id="SignUp">
	<div class="container">
        <div class="login-form">
            <div class="main-div">
                <form id="Login" action="/SNSShop/Login/signupfunction.jsp" method="post" name="signup">
                	<div class="form-group">
                		<input class="form-control" name ="userid" placeholder="ID" type="text" required autofocus />
                	</div>
                	<div class="form-group row">
                		<div class="col-xs-6 col-md-6">
                        	<input class="form-control" name="userpw" placeholder="Password" type="password" required />
                    	</div>
                    	<div class="col-xs-6 col-md-6">
                    		<input class="form-control" name="returnuserpw" placeholder="Re-enter Password" type="password" required />
                    	</div>
                    </div>
                    <div class="form-group">
                    	<input class="form-control" name="username" placeholder="Name" type="text"/>
                    </div>
              
                    <div class="form-group">
                         <input class="form-control" name="useremail" placeholder="Your Email" type="email" />
                    </div>
                    <div class="form-group">
	                     	<label for="">Birth Date</label>
				            <div class="row">
				            	<div class="col-xs-4 col-md-4">
				                    <select class="form-control" name="year">
				                    	<option value="">Year</option>
				                        <% for(int formYear=1970 ;formYear<2006;formYear++) {%>
				                        <option value="<%=formYear %>"><%=formYear %></option>
				                        <%} %>
				                    </select>
				                </div>
				                <div class="col-xs-4 col-md-4">
				                    <select class="form-control" name="month">
				                    	<option value="">Month</option>
				                    	<% for(int formMonth=1 ;formMonth<13;formMonth++) {%>
				                        <option value="<%=formMonth %>"><%=formMonth %></option>
				                        <%} %>
				                    </select>
				                </div>
				                <div class="col-xs-4 col-md-4">
				                    <select class="form-control" name="day">
				                    	<option value="">Day</option>
				                        <% for(int formDay=1 ;formDay<32;formDay++) {%>
				                        <option value="<%=formDay %>"><%=formDay %></option>
				                        <%} %>
				                    </select>
				                </div>
				            </div>
                     </div>
                     <div class="form-group">
                     	 <label class="radio-inline">
			                <input type="radio" name="gender" id="inlineCheckbox1" value='M' />
			                Male
			            </label>
			            <label class="radio-inline">
			                <input type="radio" name="gender" id="inlineCheckbox2" value='F' />
			                Female
			            </label>
			            <label class="radio-inline">
			                <input type="radio" name="gender" id="inlineCheckbox3" value='N' checked/>
			                NoShow
			            </label>
                     </div>
                    <button type="button" class="btn btn-lg btn-primary btn-block" onclick="javascript:signupcheck()">Sign up</button>
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