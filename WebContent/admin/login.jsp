<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/header.jsp" %>
<body>
	<div class="logo" >
		<img src="<%=request.getContextPath() %>/template/admin/images/logo.png" width="217px" height="55px"/>
	</div>
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading" align="center">SE11</div>
				<script type="text/javascript">
				$().ready(function() {
					// validate signup form on keyup and submit
					$("#loginForm").validate({
						rules: {
							username: {
								required: true,
								minlength: 5
							},
							password: {
								required: true,
								minlength: 5
							},
						},
						messages: {
							username: {
								required: "<span style='color:red; font-weight:bold'>Username không được để trống!!</span>",
								minlength: "<span style='color:red; font-weight:bold'>Username tối thiểu 5 kí tự !!</span>"
							},
							password: {
								required: "<span style='color:red; font-weight:bold'>Password không được để trống!!</span>",
								minlength: "<span style='color:red; font-weight:bold'>Password tối thiểu 5 kí tự !!</span>"
							},
						}
					});
				});
				</script>
				<%
					int msg=0;
					if(request.getParameter("msg")!=null){
						msg=Integer.parseInt(request.getParameter("msg"));
						if(msg==0){
							out.print("<span style='color:red; font-weight:bold'>Sai username hoặc password!!</span>");
						}
					}
				%>
				<div class="panel-body">
					<form role="form" action="" method="post" id="loginForm">
						<fieldset>
							<div class="form-group">
								<label style="width:110px">Tên đăng nhập: </label>
								<input class="form-control" type="text" placeholder="Tên đăng nhập" name="username"  autofocus="">
							</div>
							<div class="form-group">
								<label style="width:110px">Mật khẩu:</label>
								<input class="form-control" type="password" placeholder="Mật khẩu"  name="password">
							</div>
							<div class="form-group" align="center">
								<button type="submit" name="submit" class="btn btn-primary">Đăng nhập</button>
							</div >
							<div class="form-group" align="center">
								<a href="index.html" align="center">Quên mật khẩu?</a>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
<%@ include file ="/template/admin/inc/footer.jsp" %>
