<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/admin_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Quản lí bài đăng</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<table data-toggle="table" data-url="tables/data1.json">
						    <thead>
						    <tr>
						        <th>Tên đề tài</th>
						        <th>Ngày tháng</th>
						        <th>Chức năng</th>
						    </tr>
						    </thead>
						    <tr>
						        <td>Tên đề tài mô tả</td>
						        <td>Ngày tháng mô tả</td>
						        <td><a href="admin_edit_baidang.html">Sửa </a>-<a> Xóa</a></td>
						    </tr>
						</table>
					</div>
					<div class="panel-body" align="right"><a href="admin_add_baidang.html">Thêm bài đăng</a></div>
				</div>
			</div>
		</div><!--/.row-->	
<%@ include file ="/template/admin/inc/footer.jsp" %>
