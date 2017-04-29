<%@page import="bean.Category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/admin_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Sửa danh mục</h1>
			</div>
		</div><!--/.row-->
						
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-6" style="width:200px">
						</div>
						<div class="col-md-6" style="width:850px">
						<%
						if(request.getAttribute("objCat")!=null){
							Category objCat = (Category)request.getAttribute("objCat");
						%>
							<form role="form" action="<%=request.getContextPath() %>/admin/edit_cat?cid=<%=objCat.getId_cat() %>" method="post">												
								<div class="form-group">
									<label style="width:100px">Tên danh mục</label>
									<input class="form-control" name="nameCat" value="<%=objCat.getName_cat() %>"  style="width:400px" placeholder="Tên danh mục">
								</div>
								<div class="form-group" style="padding-left: 280px">
									<button type="submit" class="btn btn-primary">Sửa</button>
								</div>								
							</form>
						<%} %>	
						</div>
					</div>
				</div>
			</div><!--/.col-->
		</div><!--/.row-->
<%@ include file ="/template/admin/inc/footer.jsp" %>
