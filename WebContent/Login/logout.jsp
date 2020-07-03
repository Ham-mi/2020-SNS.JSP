<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("userid");
	session.removeAttribute("userpw");
	session.removeAttribute("username");
	
	out.println("<script>");
	out.println("alert('로그아웃 하였습니다.')");
	out.println("location.href='/SNSShop/Main/index.jsp'");
	out.println("</script>");

%>