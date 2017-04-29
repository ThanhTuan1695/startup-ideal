<%@page import="bean.Project"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/user_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Thống kê</h1>
			</div>
		</div><!--/.row-->
		
				
		<div class="row">
			<div class="col-xs-6 col-md-3">
			<%
				ArrayList<Project> alProject = (ArrayList<Project>)request.getAttribute("alProject");
				int tong = alProject.size(); 
				int view = 0;
				for(Project objProject:alProject){
					view += objProject.getView();
				}
			%>
				<div class="panel panel-default">
					<label>Tổng số bài viết: </label>
					<p><%=tong %></p>
					<label>Số lượt view: </label>
					<p><%=view %></p>
				</div>
			</div>
		</div><!--/.row-->
											
<%@ include file ="/template/admin/inc/footer.jsp" %>
