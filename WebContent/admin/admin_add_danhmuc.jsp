<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/admin_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Thêm danh mục</h1>
			</div>
		</div>
						
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-6" style="width:200px">
								
						</div>
						<div class="col-md-6" style="width:850px">
							<form role="form" action="<%=request.getContextPath() %>/admin/add_cat" method="post">							
								<div class="form-group">
									<label style="width:150px">Tên danh mục</label>
									<input class="form-control" style="width:400px" name = "nameCat" value = "" placeholder="Tên danh mục">
								</div>	
								<div class="form-group" style="padding-left: 280px">
									<button type="submit" class="btn btn-primary">Thêm</button>
								</div>							
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>	
<%@ include file ="/template/admin/inc/footer.jsp" %>
