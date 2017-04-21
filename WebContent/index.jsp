<%@page import="model.bean.TinTuc"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="inc/header.jsp" %>
  <div class="body">
    <div class="body_resize">
      <div class="left">
      
      	<%
      		ArrayList<TinTuc> listtin = (ArrayList<TinTuc>) request.getAttribute("listtin");
      		for(TinTuc tin : listtin){
      	%>
        <div class="item">
        	<h2><a href="<%=request.getContextPath()%>/chitiet?did=<%=tin.getIdtin()%>" title=""><%=tin.getTentin() %></a></h2>
	        <img src="<%=request.getContextPath() %>/images/img_1.jpg" alt="" width="585" height="156" />
	        <div class="clr"></div>
	        <p><%=tin.getMota() %></p>
		</div>
		
		<%} %>
		
      </div>
      
      
      
      <%@include file ="inc/rightbar.jsp" %>
  
 <%@ include file ="inc/footer.jsp" %>
