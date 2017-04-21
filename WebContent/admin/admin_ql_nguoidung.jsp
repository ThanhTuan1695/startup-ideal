<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/admin_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">SE11</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<table data-toggle="table" data-url="tables/data1.json">
						    <thead>
						    <tr>
						        <th>Tên đăng nhập</th>
						        <th>Họ và tên</th>
								<th>Chức vụ</th>
						        <th>Chức năng</th>
						    </tr>
						    </thead>
						    <tr>
						        <td>Tên đăng nhập mô tả</td>
								<td>Họ và tên mô tả</td>
						        <td>Chức vụ mô tả</td>
						        <td><a href="admin_edit_nguoidung.html">Sửa </a>-<a> Xóa</a></td>
						    </tr>
						</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
<%@ include file ="/template/admin/inc/footer.jsp" %>
