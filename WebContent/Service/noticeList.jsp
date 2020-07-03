<%@page import="snsnotice.noticeDAO.noticeDAO"%>
<%@page import="snsnotice.noticeDTO.noticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
	int start = 1;
	if(request.getParameter("start") !=null){
		start = Integer.parseInt(request.getParameter("start"));
	}
	
	ArrayList<noticeDTO> list = noticeDAO.getInstance().getList(start);
	int total = noticeDAO.getInstance().getTotal();
	int nowPage = (start -1) / 7+1;

	request.setAttribute("total", total);
	request.setAttribute("nowpage", nowPage);
	request.setAttribute("list", list);
	request.setAttribute("start", start);
	
	//pageContext.forward("/Service/List.jsp");

%>


<div class="contact">
<div class="container">
<div class="row">
				
	<!-- Contact Info -->
	<div class="col-lg-12">
		<div class="contact_info_container">
			<table class="table table-hover text-center">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>			
					<c:choose>
						<c:when test="${list==null }">
							<tr>
								<th colspan="5">글 목록이 없습니다.</th>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="dto" items = "${list}">	
								<tr>
									<td>${dto.noindex }</td>
									<td>
										<a href="/SNSShop/Service/readContent.jsp?noindex=${dto.noindex}">${dto.notitle}</a>
									</td>
									<td>${dto.noname}</td>
									<td>${dto.nodate}</td>
									<td>${dto.nonum}</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
	</div>
	<div class="col-lg-12">
		<div class="contact_info_container text-center">
				<c:if test="${userid !=null}">
					<input type="button" onclick ="location.href = '/SNSShop/Service/noticeWrite.jsp'" value="글쓰기">
				</c:if>
				<c:if test="${nowpage>2}">
					<a href="/SNSShop/Service/noticeList.jsp?start=${start-14}">[이전]</a>
				</c:if>
				<c:if test="${nowpage>1}">
					<a href="/SNSShop/Service/noticeList.jsp?start=${start-7}">[${nowpage-1}]</a>
				</c:if>
				[${nowpage}]
				<c:if test="${start + 7 <=total}">
					<a href="/SNSShop/Service/noticeList.jsp?start=${start+7}">[${nowpage+1}]</a>
				</c:if>
				<c:if test="${start + 14 <=total}">
					<a href="/SNSShop/Service/noticeList.jsp?start=${start+14}">[다음]</a>
				</c:if>
		</div>
	</div>
</div>
</div>
</div>