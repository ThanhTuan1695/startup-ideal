<%@page import="bean.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ModelCategory"%>
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
								case 3:
									out.print("<span style = 'color:red;font-weight:bold'>Thêm thành công</span>");
									break;
								case 4:
									out.print("<span style = 'color:red;font-weight:bold'>Tên danh mục đã tồn tại</span>");
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
						        <th>Tên danh mục</th>
						        <th>Chức năng</th>
						    </tr>
						    </thead>
						    <%
						    ModelCategory catDAO = new ModelCategory();
						    if(catDAO.getList()!= null){
						    	ArrayList<Category> list = (ArrayList<Category>)catDAO.getList();
						    	if(list.size() >0){
						    		for(Category item : list){
						    %>
						    <tr>
						        <td><%=item.getName_cat() %></td>
						        <td><a href="<%=request.getContextPath()%>/admin/show_edit_cat?cid=<%=item.getId_cat()%>">Sửa </a>-<a href="<%=request.getContextPath()%>/admin/del_cat?cid=<%=item.getId_cat()%>"> Xóa</a></td>
						    </tr>
						    <%	}
						    	}
						    } %>
						</table>
					</div>
					<div class="panel-body" align="right"><a href="<%=request.getContextPath()%>/admin/show_add_cat">Thêm danh mục</a></div>
				</div>
			</div>
		</div><!--/.row-->	
<%@ include file ="/template/admin/inc/footer.jsp" %>
