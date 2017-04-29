<%@page import="bean.Status"%>
<%@page import="model.ModelStatus"%>
<%@page import="bean.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ModelCategory"%>
<%@page import="bean.Project"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/admin_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Sửa bài đăng</h1>
			</div>
		</div><!--/.row-->
						
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
					<%
						if(request.getAttribute("objPro")!= null) {
							Project objPro = (Project) request.getAttribute("objPro");
						%>
							<form role="form" action = "<%=request.getContextPath() %>/admin/edit_project?pid=<%=objPro.getIdPro()%>" method="POST" enctype="multipart/form-data">
							<%if("".equals(objPro.getPicture())){%>
								<div class="col-md-6" style="width:200px">
									<label class="custom-file-upload">
										<input type="file" name = "picture" value = ""/>
										<img src="<%=request.getContextPath() %>/template/admin/images/file.png" width="150" height="90">
									</label>
								</div>
							<% }else {%>
								<div class="col-md-6" style="width:200px">
									<label class="custom-file-upload">
										<input type="file" name = "picture" value = ""/>
										<img src="<%=request.getContextPath() %>/file/<%=objPro.getPicture()%>" width="150" height="90">
									</label>
								</div>
							<%} %>		
						
						<div class="col-md-6" style="width:850px">
											
								<div class="form-group">
									<label style="width:100px">Tiêu đề</label>
									<input class="form-control" name= "namepro" placeholder="Tiêu đề" value = "<%=objPro.getNamePro()%>"/>
								</div>
																
								<div class="form-group">
									<label style="width:100px">Mô tả</label>
									<textarea class="form-control" name= "preview" rows="3"><%=objPro.getPreviewText()%></textarea>				
								</div>
								<div class="form-group">
									<label style="width:100px">Danh mục</label>
									<select class="form-control" name = "nameCat">
									<%
									ModelCategory catDAO = new ModelCategory();
									if(catDAO.getList()!=null){
										String act = "";
										ArrayList<Category> listCat = (ArrayList<Category>) catDAO.getList();
										for(Category itemCat : listCat){
											if(objPro.getIdCat() == itemCat.getId_cat()){
												act = "selected = 'selected'";
											}else{
												act = "";
											}
									%>
										<option <%=act %> value = "<%=itemCat.getId_cat()%>"><%=itemCat.getName_cat()%></option>
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
										String act = "";
										ArrayList<Status> listStatus = (ArrayList<Status>) staDAO.getList();
										for(Status item : listStatus){
											if(objPro.getIdStatus() == item.getId_status()){
												act = "selected = 'selected'";
											}else{
												act = "";
											}
									%>
										<option <%=act %> value = "<%=item.getId_status()%>"><%=item.getName_status()%></option>
										<%}
									}%>
									</select>							
								</div>
								<div class="form-group">
									<label style="width:100px">Chi tiết</label>
									<textarea class="form-control" name = "detail" rows="6"><%=objPro.getDescribe()%></textarea>	
								</div>		
								<div class="form-group" style="padding-left: 280px">
									<button type="submit" class="btn btn-primary">Sửa</button>
								</div>								
							</form>
							<%} %>
						</div>
					</div>
				</div>
			</div><!-- /.col-->
		</div><!-- /.row -->		
<%@ include file ="/template/admin/inc/footer.jsp" %>
