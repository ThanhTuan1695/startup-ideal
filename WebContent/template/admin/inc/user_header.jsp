<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/header.jsp" %>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<p class="navbar-brand">Người dùng</p>
			</div>							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<ul class="nav menu">
			<li><a href="<%=request.getContextPath()%>/admin/user_profile"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Thông tin cá nhân</a></li>
			<li><a href="<%=request.getContextPath()%>/admin/user_qlbaidang"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> Quản lí bài đăng</a></li>
			<li><a href="<%=request.getContextPath()%>/admin/user_view"><svg class="glyph stroked line-graph"><use xlink:href="#stroked-line-graph"></use></svg> Thống kê</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">	
		<div class="logo" >
			<img src="<%=request.getContextPath() %>/template/admin/images/logo.png" width="217px" height="55px"/>
			<a href="<%=request.getContextPath() %>/admin/logout" class="logout">Đăng xuất</a>		
		</div>