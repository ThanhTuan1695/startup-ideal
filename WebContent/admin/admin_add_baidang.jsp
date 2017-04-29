<%@page import="bean.Status"%>
<%@page import="model.ModelStatus"%>
<%@page import="bean.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ModelCategory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/admin_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Thêm bài đăng</h1>
			</div>
		</div>
						
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
					<form role="form" action = "<%=request.getContextPath() %>/admin/add_project" method="POST" enctype="multipart/form-data">
						<div class="col-md-6" style="width:200px">
							<label class="custom-file-upload">
								<input type="file" name = "picture" value = ""/>
								<img src="<%=request.getContextPath() %>/template/admin/images/file.png" width="150" height="90">
							</label>
						</div>
						<div class="col-md-6" style="width:850px">
													
								<div class="form-group">
									<label style="width:100px">Tiêu đề</label>
									
									<input class="form-control" name= "namepro" placeholder="Tiêu đề" value = ""/>
								</div>
																
								<div class="form-group">
									<label style="width:100px">Mô tả</label>
									<textarea class="form-control" name= "preview" rows="3"></textarea>		
								</div>
								<div class="form-group">
									<label style="width:100px">Danh mục</label>
									<select name = "nameCat" class="form-control">
										<%
									ModelCategory catDAO = new ModelCategory();
									if(catDAO.getList()!=null){
										ArrayList<Category> listCat = (ArrayList<Category>) catDAO.getList();
										for(Category itemCat : listCat){
									%>
										<option value = "<%=itemCat.getId_cat()%>"><%=itemCat.getName_cat()%></option>
										<%}
									}%>
									</select>							
								</div>
								<div class="form-group">
									<label style="width:100px">Status</label>
									<select name = "status" class="form-control">
										<%
									ModelStatus staDAO = new ModelStatus();
									if(staDAO.getList()!=null){
										ArrayList<Status> listStatus = (ArrayList<Status>) staDAO.getList();
										for(Status item : listStatus){
									%>
										<option value = "<%=item.getId_status()%>"><%=item.getName_status()%></option>
										<%}
									}%>
									</select>							
								</div>
								<div class="form-group">
									<label style="width:100px">Chi tiết</label>
									<textarea class="form-control" name = "detail" rows="6"></textarea>
								</div>		
								<div class="form-group" style="padding-left: 280px">
									<button type="submit" class="btn btn-primary">Thêm</button>
								</div>	
						</div>
							</form>
						</div>
					</div>
				</div><!-- /.col-->
			</div><!-- /.row-->
	
<%@ include file ="/template/admin/inc/footer.jsp" %>
