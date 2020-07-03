<%@page import="snsshop.snsDTO.tagDTO"%>
<%@page import="snsshop.snsDAO.snsDAO"%>
<%@page import="snsshop.snsDTO.snsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		request.setCharacterEncoding("utf-8");
		
		String userid = request.getParameter("userid");
		String snsid = request.getParameter("snsid");
		String snsname= request.getParameter("snsname");
		String snsdiv= request.getParameter("snsdiv");
		String snscate = request.getParameter("snscate");
		String snsaddr = request.getParameter("snsaddr");
		String snscountry = request.getParameter("snscountry");
		String snsway = request.getParameter("snsway");
		String snsimage = request.getParameter("snsimage");
		if(snsimage==""){ snsimage=null; }
		
		boolean snscheck = false;
		snsDTO dto = new snsDTO(snsid,snsname,snsdiv,snscate,snsaddr,snscountry,snsway,userid,snsimage);
	    snscheck = snsDAO.getInstance().marketInsert(dto);
		
	    int addtagnum=0;
		boolean tagcheck = false;
	    tagDTO tagdto = new tagDTO();
	    tagdto.setSnsid(snsid);
	    String[] snstags = request.getParameterValues("snstag");
	   	
	    for(int i=0; i<snstags.length; i++){
	    	if(snstags[i].equals("basict")){
	    		tagdto.setBasict(true);
	    	}else if(snstags[i].equals("cutet")){
	    		tagdto.setCutet(true);
	    	}else if(snstags[i].equals("fancyt")){
	    		tagdto.setFancyt(true);
	    	}else if(snstags[i].equals("uniquet")){
	    		tagdto.setUniquet(true);
	    	}else if(snstags[i].equals("simplet")){
	    		tagdto.setSimplet(true);
	    	}else if(snstags[i].equals("lightt")){
	    		tagdto.setLightt(true);
	    	}else if(snstags[i].equals("comfortablet")){
	    		tagdto.setComfortablet(true);
	    	}else if(snstags[i].equals("tidyt")){
	    		tagdto.setTidyt(true);
	    	}else{
	    		//addtag 받는 부분
	    		switch(addtagnum){
	    		case 0:
	    			tagdto.setAddt1(snstags[i]);
	    			addtagnum++;
	    			break;
	    		case 1:
	    			tagdto.setAddt2(snstags[i]);
	    			addtagnum++;
	    			break;
	    		case 2:
	    			tagdto.setAddt3(snstags[i]);
	    			addtagnum++;
	    			break;
	    		case 3:
	    			tagdto.setAddt4(snstags[i]);
	    			addtagnum++;
	    			break;
	    		case 4:
	    			tagdto.setAddt5(snstags[i]);
	    			addtagnum++;
	    			break;
	    		default:
	    			System.out.println("추가 불가");
	    		}
	    		
	    	}
	    }
	    tagcheck = snsDAO.getInstance().tagInsert(tagdto);
		String msg = null;
		
		if(snscheck){ msg = "등록 성공."; }
		else{ msg = "등록 실패. 오류 발생"; }
		if(tagcheck){ msg += "태그 등록 성공.";}
		else{ msg += "태그 등록 실패. 오류 발생"; }
		
		request.setAttribute("msg", msg);
		request.setAttribute("check", snscheck||tagcheck);
		pageContext.forward("market.jsp");
%>