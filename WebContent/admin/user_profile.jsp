<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/user_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Thông tin cá nhân</h1>
			</div>
		</div><!--/.row-->
						
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-6" style="width:100px">
							<label class="custom-file-upload">
								<input type="file"/>
								<img src="<%=request.getContextPath() %>/template/admin/images/logo.png" width="70" height="70">
							</label>
						</div>
						<div class="col-md-6" style="width:450px">
							<form role="form">							
								<div class="form-group">
									<label style="width:100px">Tên hiển thị</label>
									<input class="form-control" placeholder="Tên hiển thị">
								</div>
																
								<div class="form-group">
									<label style="width:100px">Ngày sinh</label>
									<input class="form-control" placeholder="Ngày sinh">
									
								</div>
								<div class="form-group">
									<label style="width:100px">Email</label>
									<input class="form-control" placeholder="Email">									
								</div>
								<div class="form-group">
									<label style="width:100px">Số điện thoại</label>
									<input class="form-control" placeholder="Số điện thoại">
								</div>		
								<div class="form-group" align="center">
									<button type="submit" class="btn btn-primary">Sửa</button>
								</div>								
							</form>
						</div>
						<div class="col-md-6" style="width:450px">
							<form role="form">
								<div class="form-group">
									<label style="width:100px">Mật khẩu cũ</label>
									<input class="form-control" placeholder="Tên hiển thị">
								</div>
																
								<div class="form-group">
									<label style="width:100px">Mật khẩu mới</label>
									<input class="form-control" placeholder="Ngày sinh">									
								</div>
								<div class="form-group">
									<label style="width:100px">Nhập lại mật khẩu</label>
									<input class="form-control" placeholder="Email">									
								</div>	
								<div class="form-group" align="center">
									<button type="submit" class="btn btn-primary">Đổi mật khẩu</button>
								</div>		
							</form>							
						</div>
					</div>
				</div>
			</div><!-- /.col-->
		</div><!-- /.row -->		
<%@ include file ="/template/admin/inc/footer.jsp" %>
