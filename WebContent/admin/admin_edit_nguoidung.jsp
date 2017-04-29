<%@page import="bean.User"%>
<%@page import="bean.Role"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ModelRole"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file ="/template/admin/inc/admin_header.jsp" %>
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" align="center">Sửa thông tin người dùng</h1>
			</div>
		</div><!--/.row-->
						
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
					<%
					if(request.getAttribute("objUser")!=null){
						User objUser = (User) request.getAttribute("objUser");
					%>					
					<form role="form" action = "<%=request.getContextPath() %>/admin/edit_user?uid=<%=objUser.getIdUser() %>" method = "POST" enctype="multipart/form-data">	
						<div class="col-md-6" style="width:100px">
							<%
							if(!"".equals(objUser.getAvatar())){%>
								<label class="custom-file-upload">
									<input type="file" name = "avatar" value = ""/>
									<img src="<%=request.getContextPath() %>/file/<%=objUser.getAvatar()%>" width="70" height="70">
								</label>
							<%}else{%>
								<label class="custom-file-upload">
								<input type="file" name = "avatar" value = ""/>
								<img src="<%=request.getContextPath() %>/template/admin/images/avatar.png" width="70" height="70">
							</label>
							<% }%>
						</div>
						<div class="col-md-6" style="width:450px">
													
								<div class="form-group">
									<label style="width:100px">Tên hiển thị</label>
									<input class="form-control" type = "text" name = "fullname" value = "<%=objUser.getFullName() %>" placeholder="Tên hiển thị">
								</div>
								<div class="form-group">
									<label style="width:100px">Email</label>
									<input class="form-control" type = "text" name = "email" value = "<%=objUser.getEmail() %>" placeholder="Email">									
								</div>
								<div class="form-group">
									<label style="width:100px">Số điện thoại</label>
									<input class="form-control" type = "text" name = "phone" value = "<%=objUser.getPhone() %>" placeholder="Số điện thoại">
								</div>
								<div class="form-group">
									<label style="width:100px">Cấp bậc</label>
									<select class="form-control" name = "role">
									<%
									ModelRole roleDAO = new ModelRole();
									if(roleDAO.getList()!=null){
										String act = "";
										ArrayList<Role> list = (ArrayList<Role>) roleDAO.getList();
										for(Role item : list){
											if(item.getId_role() == objUser.getIdRole()){
												act = "selected = 'selected'";
											}else{
												act = "";
											}
									%>
										<option <%=act %> value = "<%=item.getId_role()%>"><%=item.getName_role()%></option>
										<%}
									}%>
									</select>							
								</div>		
								<div class="form-group" align="center">
									<button type="submit" class="btn btn-primary">Sửa</button>
								</div>								
							
						</div>
						</form>
					
						<div class="col-md-6" style="width:450px">
							<form id="editpass" role="form" action = "<%=request.getContextPath() %>/admin/edit_pass_user?uid=<%=objUser.getIdUser() %>" method = "POST" >	
								<div class="form-group">
									<label style="width:100px">Mật khẩu cũ</label>
									<input class="form-control" name = "oldpassword" type = "password"  placeholder="">
								</div>
																
								<div class="form-group">
									<label style="width:100px">Mật khẩu mới</label>
									<input class="form-control" name = "newpassword" id = "newpassword" type = "password" placeholder="">									
								</div>
								<div class="form-group">
									<label style="width:100px">Nhập lại mật khẩu</label>
									<input class="form-control" name = "newpassword_repeat" type = "password" placeholder="">									
								</div>	
								<div class="form-group" align="center">
									<button type="submit" class="btn btn-primary">Đổi mật khẩu</button>
								</div>		
							</form>
							<script type = "text/javascript">
									$('#editpass').validate({
										rules:{
											oldpassword:{
												required:true,
											},
											newpassword:{
												required:true,
											},
											newpassword_repeat:{
												required:true,
												equalTo:"#newpassword",
											},
											
										},
										messages:{
											oldpassword:{
												required:"Bắt buộc nhập",
											},
											newpassword:{
												required:"Bắt buộc nhập",
											},
											newpassword_repeat:{
												required:"Bắt buộc nhập",
												equalTo:"Không trùng khớp",
											},
										},
									});
							</script>							
						</div>
							<%} %>
					</div>
				</div>
			</div><!-- /.col-->
		</div><!-- /.row -->		
<%@ include file ="/template/admin/inc/footer.jsp" %>
