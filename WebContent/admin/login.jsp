<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login</title>
	<link href="<%=request.getContextPath() %>/template/admin/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/template/admin/css/datepicker3.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/template/admin/css/styles.css" rel="stylesheet">
</head>
<body>
	<div class="logo" >
		<img src="<%=request.getContextPath() %>/template/admin/images/logo.png" width="217px" height="55px"/>
	</div>
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading" align="center">SE11</div>
				<div class="panel-body">
					<form role="form" action="" method="post">
						<fieldset>
							<div class="form-group">
								<label style="width:110px">Tên đăng nhập: </label>
								<input class="form-control" placeholder="Tên đăng nhập" name="username" type="text" autofocus="">
							</div>
							<div class="form-group">
								<label style="width:110px">Mật khẩu:</label>
								<input class="form-control" placeholder="Mật khẩu" name="password" type="password" value="">
							</div>
							<div class="form-group" align="center">
								<button type="submit" class="btn btn-primary">Đăng nhập</button>
							</div >
							<div class="form-group" align="center">
								<a href="index.html" align="center">Quên mật khẩu?</a>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
<%@ include file ="/template/admin/inc/footer.jsp" %>
