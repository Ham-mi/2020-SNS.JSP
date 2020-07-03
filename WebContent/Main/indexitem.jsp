<%@page import="java.util.Collections"%>
<%@page import="java.util.Arrays"%>
<%@page import="snsshop.snsDAO.snsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("utf-8");
	//String maintag [] = new String[] {"populart,recommendt,newt"};
	List<String> maintag = new ArrayList<>();
	maintag.add("populart"); 
	maintag.add("recommendt"); 
	maintag.add("newt");
	request.setAttribute("maintag", maintag);
	int i = 0 , num = 0;
	
	//String selectitem [][]= null;
	
	
	for (int j=0;j<3;j++){
		String selectitem [][] = (String[][])(snsDAO.getInstance().selectItem((maintag.get(i))+"=1"));
%>

<div class="why">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="section_title_container text-center">
					<div class="section_title"><h3># <%=maintag.get(i) %></h3></div>
					<div class="section_subtitle"><a class="section_link" href="#">+더보기</a></div>
				</div>
			</div>
		</div>
		<div class="row why_row">
			<!-- Why Item -->
			<div class="owl-carousel owl-theme">
				<!-- 반복 구간 -->
				<%
				//랜덤 리스트.
				/*if(selectitem.length < 6){ num = 6; }
				else*/ if (selectitem.length >12) { num =12; }
				else { num = selectitem.length; }
				
				List<String> randomnum = new ArrayList<>();
				for(int n=0; n<num; n++){
					randomnum.add(String.valueOf(n));
				}
				Collections.shuffle(randomnum);
				pageContext.setAttribute("randomnum", randomnum);
				%>
				<c:forEach var="v" items="${randomnum}">
					<%int v=Integer.parseInt((String)pageContext.getAttribute("v")); %>
					<div class="item">
						<div class="card car-size">
						<a href="#" title="<%=selectitem[v][4] %>">	<img class="card-img-top" src="../images/card_<c:out value="${v+1}"/>.jpg" alt="Card image cap"> </a>
							<div class="card-body">
								<h5 class="card-title"><%=selectitem[v][1]%></h5>
								<p class="card-text">
									<% for(int s=2; s<25; s++){
										if(s!=4 && s!=7 && s!=8){ 
											if(selectitem[v][s]!=null){out.print("#"+selectitem[v][s]+" ");} 
										}
									} %>
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
								
			</div>
		</div>
	</div>
</div>
<% i++; }%>