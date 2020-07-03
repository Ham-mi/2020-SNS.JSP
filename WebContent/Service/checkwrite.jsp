
<%@page import="snsnotice.noticeDAO.noticeDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="snsnotice.noticeDTO.noticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	noticeDTO dto = new noticeDTO();
	
	String realPath = request.getServletContext().getRealPath("/Storage");
	MultipartRequest mr = new MultipartRequest(request,realPath,1024*1024*10,"UTF-8",new DefaultFileRenamePolicy());
	
	dto.setNoname(mr.getParameter("username"));
	dto.setNotitle(mr.getParameter("notitle"));
	dto.setNotext(mr.getParameter("notext"));
	dto.setNofile(mr.getFilesystemName("nofile"));
	
	boolean check = noticeDAO.getInstance().write(dto);
	
	out.println("<script>");
	if(check){
		out.println("alert('글쓰기 완료');");
		out.println("location.href = '/SNSShop/Service/service.jsp';");
	}else{
		out.println("alert('글쓰기 실패');");
		out.println("history.back();");		
	}
	out.println("</script>");

%>