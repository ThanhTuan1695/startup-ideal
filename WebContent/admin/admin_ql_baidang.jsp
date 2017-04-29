<%@page import="model.ModelProject"%>
<%@page import="bean.Project"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/admin_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Quản lí bài đăng</h1>
			</div>
		</div><!--/.row-->
		<%
							if(request.getParameter("msg")!=null) {
								int msg = Integer.parseInt(request.getParameter("msg"));
								switch (msg) {
								case 0 : 
									out.print("<span style = 'color:red;font-weight:bold'>Thất bại</span>");
									break;
								case 1 : 
									out.print("<span style = 'color:red;font-weight:bold'>Sửa thành công</span>");
									break;
								case 2:
									out.print("<span style = 'color:red;font-weight:bold'>Xóa thành công</span>");
									break;
								case 3:
									out.print("<span style = 'color:red;font-weight:bold'>Thêm thành công</span>");
									break;
								}
							}
							%>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<table data-toggle="table" data-url="tables/data1.json">
						    <thead>
						    <tr>
						        <th>Tên đề tài</th>
						        <th>Ngày tháng</th>
						        <th>Chức năng</th>
						    </tr>
						    </thead>
						    <%
						    ModelProject proDAO = new ModelProject();
						    if(proDAO.getListProject()!=null){
						    	 ArrayList<Project> list = proDAO.getListProject();
						    	 if(list.size()>0){
						    	 	for(Project item : list) {
						    %>
						     <tr>
						        <td><%=item.getNamePro()%></td>
						        <td><%=item.getTimeCreate()%></td>
						        <td><a href="<%=request.getContextPath()%>/admin/show_edit_project?pid=<%=item.getIdPro()%>">Sửa </a>-<a href="<%=request.getContextPath()%>/admin/del_project?pid=<%=item.getIdPro()%>"> Xóa</a></td>
						    </tr>
						    <%}
						    	 }
						    }
						    %>
						</table>
					</div>
					<div class="panel-body" align="right"><a href="<%=request.getContextPath()%>/admin/show_add_project">Thêm bài đăng</a></div>
				</div>
			</div>
		</div><!--/.row-->	
<%@ include file ="/template/admin/inc/footer.jsp" %>
