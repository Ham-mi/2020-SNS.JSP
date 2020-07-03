<%@page import="snsnotice.noticeDAO.noticeDAO"%>
<%@page import="snsnotice.noticeDTO.noticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int noindex = Integer.parseInt(request.getParameter("noindex"));
	noticeDAO.getInstance().readCount(noindex);
	noticeDTO dto = noticeDAO.getInstance().getContent(noindex);
	
	request.setAttribute("dto", dto);
	
%>


<div class="contact">
<div class="container">
<div class="row text-center">
				
	<!-- Contact Info -->
	<div class="col-lg-12">
		<div class="contact_info_container">
			<table class="table table-hover text-center align-middle">
					<tr>
						<th>제목</th>
						<td>${dto.notitle}</td>
						<th>작성일</th>
						<td>${dto.nodate}</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>${dto.noname}</td>
						<th>조회수</th>
						<td>${dto.nonum}</td>
					</tr>
					<tr>
						<td colspan ="4" style="min-height:200px;">
							${dto.notext}
						</td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td colspan ="3">
							<a href="/SNSShop/Service/fileDownload.jsp?nofile=${dto.nofile}">${dto.nofile}</a>
						</td>
					</tr>
			</table>
		</div>
	</div>

</div>
</div>
</div>