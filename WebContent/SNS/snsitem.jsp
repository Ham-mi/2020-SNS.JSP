<%@page import="snsshop.snsDAO.snsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("utf-8");
	List<String> maintag = new ArrayList<>();
	maintag.add("populart"); 
	maintag.add("recommendt"); 
	maintag.add("newt");
	request.setAttribute("maintag", maintag);
	int i = 0 , num = 0;
	
	//String selectitem [][]= null;
	
	String selectitem [][] = (String[][])(snsDAO.getInstance().selectItem((maintag.get(i))+"=1"));
%>   
	<div class="col-lg-3 col-sm-6 col-12">
		<div class="card s-Citem">
		 	<img class="card-img-top" src="../images/card_1.jpg" alt="Card image cap">
		 	<div class="card-body">
		    	<p class="card-text">#기타 #악세서리 #수제 #국내</p>
		 	</div>
		</div>
	</div>
