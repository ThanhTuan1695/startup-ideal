<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/user_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Sửa bài đăng</h1>
			</div>
		</div><!--/.row-->
						
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-6" style="width:200px">
							<label class="custom-file-upload">
								<input type="file"/>
								<img src="<%=request.getContextPath() %>/template/admin/images/file.png" width="150" height="90">
							</label>
						</div>
						<div class="col-md-6" style="width:850px">
							<form role="form">							
								<div class="form-group">
									<label style="width:100px">Tiêu đề</label>
									<input class="form-control" placeholder="Tiêu đề">
								</div>
																
								<div class="form-group">
									<label style="width:100px">Mô tả</label>
									<textarea class="form-control" rows="3"></textarea>				
								</div>
								<div class="form-group">
									<label style="width:100px">Danh mục</label>
									<select class="form-control">
										<option>Option 1</option>
										<option>Option 2</option>
										<option>Option 3</option>
										<option>Option 4</option>
									</select>							
								</div>
								<div class="form-group">
									<label style="width:100px">Chi tiết</label>
									<textarea class="form-control" rows="6"></textarea>	
								</div>		
								<div class="form-group" style="padding-left: 280px">
									<button type="submit" class="btn btn-primary">Sửa</button>
								</div>								
							</form>
						</div>
					</div>
				</div>
			</div><!-- /.col-->
		</div><!-- /.row -->		
<%@ include file ="/template/admin/inc/footer.jsp" %>
