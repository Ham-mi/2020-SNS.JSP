<%@page import="snsshop.snsDAO.snsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	
	String name = null;
	String msg = null;
	boolean check = false;
			
	name = snsDAO.getInstance().loginselect(userid, userpw);
	
	if(name != null ){
		msg = name + "님 환영합니다.";
		session.setAttribute("userid", userid);
		session.setAttribute("userpw",userpw);
		session.setAttribute("username", name);
		check = true;
	}else{
		msg = "아이디 혹은 비밀번호가 바르지 않습니다.";
	}
	
	request.setAttribute("msg",msg);
	request.setAttribute("check", check);

	out.println("<script>");
	out.println("alert('"+msg+"')");
	out.println("</script>");
	
	if(check==true){
		pageContext.forward("/Main/index.jsp");
	}else{
		pageContext.forward("/Login/login.jsp");
	}
%>