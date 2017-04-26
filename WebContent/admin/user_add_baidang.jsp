<%@page import="bean.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/user_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Thêm bài đăng</h1>
			</div>
		</div><!--/.row-->
		<script type="text/javascript">
				$().ready(function() {
					// validate signup form on keyup and submit
					$("#addform").validate({
						rules: {
							name: {
								required: true,
							},
							preview: {
								required: true,
							},
							detail: {
								required: true,
							},
						},
						messages: {
							name: {
								required: "<span style='color:red; font-weight:bold'>Tiêu đề không được để trống!!</span>",
							},
							preview: {
								required: "<span style='color:red; font-weight:bold'>Mô tả không được để trống!!</span>",
							},
							detail: {
								required: "<span style='color:red; font-weight:bold'>Chi tiết không được để trống!!</span>",
							},
						}
					});
				});
		</script>	
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<%
							ArrayList<Category> alCategory = (ArrayList<Category>)request.getAttribute("alCategory");
						%>
						<form role="form" action="<%=request.getContextPath() %>/admin/user_addbaidang?add=submit" enctype="multipart/form-data" method="post" id="addform">
						<div class="col-md-6" style="width:200px">
							<label class="custom-file-upload">
								<input name = "picture" type="file"/>
								<img src="<%=request.getContextPath() %>/template/admin/images/file.png" width="150" height="90">
							</label>
						</div>
						<div class="col-md-6" style="width:850px">
								<div class="form-group">
									<label style="width:100px">Tiêu đề</label>
									<input class="form-control" name="name" placeholder="Tiêu đề">
								</div>
																
								<div class="form-group">
									<label style="width:100px">Mô tả</label>
									<textarea class="form-control" name="preview" rows="3"></textarea>				
								</div>
								<div class="form-group">
									<label style="width:100px">Danh mục</label>
									<select name="id_cat" class="form-control">
									<%
										for(Category objCat:alCategory){
									%>
										<option value="<%=objCat.getId_cat()%>"><%=objCat.getName_cat() %></option>
									<%
										}
									%>
									</select>							
								</div>
								<div class="form-group">
									<label style="width:100px">Chi tiết</label>
									<textarea class="form-control" rows="6" name="detail"></textarea>	
								</div>		
								<div class="form-group" style="padding-left: 280px">
									<button type="submit" class="btn btn-primary">Thêm</button>
								</div>								
						</div>
						</form>
					</div>
				</div>
			</div><!-- /.col-->
		</div><!-- /.row -->		
<%@ include file ="/template/admin/inc/footer.jsp" %>
