<%@page import="bean.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ModelUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/admin_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">SE11</h1>
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
						        <th>Tên đăng nhập</th>
						        <th>Họ và tên</th>
								<th>Chức vụ</th>
						        <th>Chức năng</th>
						    </tr>
						    </thead>
						    <%
						    ModelUser userDAO = new ModelUser();
						    if(userDAO.getList()!=null){
						    	ArrayList<User> list = (ArrayList<User>) userDAO.getList();
						    	if(list.size() > 0){
						    		for(User item : list) {
						    %>
						    <tr>
						        <td><%=item.getUserName() %></td>
								<td><%=item.getFullName() %></td>
						        <td><%=item.getNameRole()%></td>
						        <td><a href="<%=request.getContextPath()%>/admin/show_edit_user?uid=<%=item.getIdUser()%>">Sửa </a>-<a href="<%=request.getContextPath()%>/admin/del_user?uid=<%=item.getIdUser()%>"> Xóa</a></td>
						    </tr>
						    <%
						    		}
						    	}
						    }
						    %>
						</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
<%@ include file ="/template/admin/inc/footer.jsp" %>
