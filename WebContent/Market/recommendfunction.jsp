<%@page import="snsshop.snsDAO.snsDAO"%>
<%@page import="snsshop.snsDTO.recommendDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String reuser = request.getParameter("reuser");
	if(reuser ==""){
		reuser=null;
	}
	String resnsid = request.getParameter("resnsid");
	String rename = request.getParameter("rename");
	if(rename==""){
		rename=null;
	}
	String rediv = request.getParameter("rediv");
	String recate = request.getParameter("recate");
	String readdr = request.getParameter("readdr");
	if(readdr ==""){
		readdr = null;
	}
	String rereason = request.getParameter("rereason");
	
	boolean check = false;
	String msg = null;
	
	recommendDTO dto = new recommendDTO(reuser,resnsid,rename,rediv,recate,readdr,rereason);

	check = snsDAO.getInstance().recommendInsert(dto);
	if(check) {
		msg ="추천되었습니다.";
	}else {
		msg = "추천 실패. 오류 발생";
	}
	request.setAttribute("msg", msg);
	request.setAttribute("check", check);
	pageContext.forward("recommend.jsp");
%>