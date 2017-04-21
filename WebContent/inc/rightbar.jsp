<%@page import="model.DAO.CatDAO"%>
<%@page import="model.bean.Danhmuctin"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<div class="right">
        <h2>Danh mục</h2>
        <ul>
        <%
        	CatDAO catdao = new CatDAO();
        	
        	ArrayList<Danhmuctin> listdm =catdao.getDanhMuc();
        
        	for(Danhmuctin dm: listdm){
        %>
          <li><a href="<%=request.getContextPath()%>/danh-muc?cid=<%=dm.getIddanhmuc()%>"><%=dm.getTendanhmuc() %></a></li>
          <%} %>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>