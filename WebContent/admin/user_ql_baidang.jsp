<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="bean.Project"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/user_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Quản lí bài đăng</h1>
			</div>
		</div><!--/.row-->
		<%
		if(request.getParameter("msg")!=null){
			int msg=Integer.parseInt(request.getParameter("msg"));
			if(msg==0){
				out.print("<span style='color:red; font-weight:bold'>Cập nhật thất bại!!</span>");
			}else if(msg==1){
				out.print("<span style='color:green; font-weight:bold'>Thêm thành công!!</span>");
			}else if(msg==2){
				out.print("<span style='color:green; font-weight:bold'>Sửa thành công!!</span>");
			}else if(msg==3){
				out.print("<span style='color:green; font-weight:bold'>Xóa thành công!!</span>");
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
						        <th>Ngày tạo</th>
						        <th>Chức năng</th>
						    </tr>
						    </thead>
						    <%
								ArrayList<Project> alProject = (ArrayList<Project>)request.getAttribute("alProject");
						    	for(Project objProject: alProject){
							%>
						    <tr>
						        <td><%=objProject.getNamePro() %></td>
						        <td><%=objProject.getTimeCreate() %></td>
						        <td><a href="<%=request.getContextPath()%>/admin/user_editbaidang?pid=<%=objProject.getIdPro()%>">Sửa </a>-<a href="<%=request.getContextPath()%>/admin/user_delbaidang?pid=<%=objProject.getIdPro()%>"> Xóa</a></td>
						    </tr>
						    <%
						    	}
						    %>
						</table>
					</div>
					<div class="panel-body" align="right"><a href="<%=request.getContextPath()%>/admin/user_addbaidang">Thêm bài đăng</a></div>
				</div>
			</div>
		</div><!--/.row-->	
	</div><!--/.main-->

<%@ include file ="/template/admin/inc/footer.jsp" %>
