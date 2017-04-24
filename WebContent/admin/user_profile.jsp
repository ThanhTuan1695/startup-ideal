<%@page import="bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/user_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Thông tin cá nhân</h1>
			</div>
		</div><!--/.row-->
		<script type="text/javascript">
				$().ready(function() {
					// validate signup form on keyup and submit
					$("#changePass").validate({
						rules: {
							password: {
								required: true,
								minlength: 5
							},
							newpass: {
								required: true,
								minlength: 5
							},
							repass: {
								required: true,
								equalTo: "#newpass"
							},
						},
						messages: {
							password: {
								required: "<span style='color:red; font-weight:bold'>Password không được để trống!!</span>",
								minlength: "<span style='color:red; font-weight:bold'>Password tối thiểu 5 kí tự !!</span>"
							},
							newpass: {
								required: "<span style='color:red; font-weight:bold'>Password mới không được để trống!!</span>",
								minlength: "<span style='color:red; font-weight:bold'>Password tối thiểu 5 kí tự !!</span>"
							},
							repass: {
								required: "<span style='color:red; font-weight:bold'>Password không được để trống!!</span>",
								equalTo: "<span style='color:red; font-weight:bold'>Password  không trùng!!</span>"
							},
						}
					});
				});
		</script>	
		<%
		if(request.getParameter("msg")!=null){
			int msg=Integer.parseInt(request.getParameter("msg"));
			if(msg==0){
				out.print("<span style='color:red; font-weight:bold'>Cập nhật thất bại!!</span>");
			}else if(msg==2){
				out.print("<span style='color:green; font-weight:bold'>Sửa thành công!!</span>");
			}else if(msg==1){
				out.print("<span style='color:green; font-weight:bold'>Đổi mật khẩu thành công!!</span>");
			}
		}
		%>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<%
							User objUser = (User)request.getAttribute("objUser");
						%>
						<form role="form" action="<%=request.getContextPath() %>/admin/user_profile?edit=submit" enctype="multipart/form-data" method="post">
						<div class="col-md-6" style="width:100px">
							<label class="custom-file-upload">
								<input name="avatar" type="file"/>
								<img src="<%=request.getContextPath() %>/file/<%=objUser.getAvatar() %>" width="70" height="70">
							</label>
						</div>
						<div class="col-md-6" style="width:450px">
								<div class="form-group">
									<label style="width:100px">Tên hiển thị</label>
									<input class="form-control" name="fullname" value="<%=objUser.getFullName() %>">
								</div>
								<div class="form-group">
									<label style="width:100px">Email</label>
									<input class="form-control" name="email" value="<%=objUser.getEmail() %>">									
								</div>
								<div class="form-group">
									<label style="width:100px">Số điện thoại</label>
									<input class="form-control" name="phone" value="<%=objUser.getPhone() %>">
								</div>		
								<div class="form-group" align="center">
									<button type="submit" name="edit" class="btn btn-primary">Sửa</button>
								</div>							
						</div>
						</form>	
						<div class="col-md-6" style="width:450px">
							<form role="form" action="" method="post" id="changePass">	
								<div class="form-group">
									<label style="width:100px">Mật khẩu cũ</label>
									<input class="form-control" type="password" name="password" placeholder="Mật khẩu cũ">
								</div>
																
								<div class="form-group">
									<label style="width:100px">Mật khẩu mới</label>
									<input class="form-control" type="password" name="newpass" id="newpass" placeholder="Mật khẩu mới">									
								</div>
								<div class="form-group">
									<label style="width:100px">Nhập lại</label>
									<input class="form-control" type="password" name="repass" placeholder="Nhập lại mật khẩu">									
								</div>	
								<div class="form-group" align="center">
									<button type="submit" name="update" class="btn btn-primary">Đổi mật khẩu</button>
								</div>		
							</form>							
						</div>
					</div>
				</div>
			</div><!-- /.col-->
		</div><!-- /.row -->		
<%@ include file ="/template/admin/inc/footer.jsp" %>
