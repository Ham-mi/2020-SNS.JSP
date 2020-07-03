<%@page import="snsshop.snsDAO.snsDAO"%>
<%@page import="snsshop.snsDTO.userDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	String username= request.getParameter("username");
	String useremail = request.getParameter("useremail");
	if(useremail == ""){
		useremail = null;
	}
	
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	
	String userbirth = null;
	if(year==""){
		userbirth=null;
	}
	else {
		userbirth = String.format("%s-%s-%s",year,month,day);
	}
	
	String usergender = request.getParameter("gender");
	if(usergender =="N"){
		usergender=null;
	}
	
	boolean check = false;
	String msg = null;
	
	userDTO dto = new userDTO(userid,userpw,username,useremail,userbirth,usergender);
	
	check = snsDAO.getInstance().signupInsert(dto);
	if(check) {
		msg ="회원가입 되었습니다.";
	}else {
		msg = "회원가입 실패. 오류 발생";
	}
	request.setAttribute("msg", msg);
	request.setAttribute("check", check);
	pageContext.forward("login.jsp");
%>