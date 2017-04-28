<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/template/public/inc/header.jsp" %>

        <!-- start page-title -->
        <section class="page-title">
            <div class="container">
                <div class="title">
                    <div class="icon">
                        <img src="images/page-title/icon-2.png" alt>
                    </div>
                    <h1>Đăng ký</h1>
                    <ol class="breadcrumb">
                      <li><a href="#">Trang Chủ</a></li>
                      <li class="active">Đăng ký</li>
                    </ol>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->
		<script type="text/javascript">
		if ($("#contact-form").length) {
	        $("#contact-form").validate({
	            rules: {
	                name: {
	                	required: true,
						minlength: 5
	                },
	                email: {
	                	required: true,
	                },
	                
	                fullname: {
	                	required: true,
						minlength: 5
	                },
	                phone: {
	                	required: true,
						minlength: 9
	                },
	                password: {
	                	required: true,
						minlength: 5
	                }

	            },

	            messages: {
	                name: {
	                	required:"<span style='color:red; font-weight:bold'>Tên đăng nhập không được bỏ trống</span>",
	                	minlength:"<span style='color:red; font-weight:bold'>Tên đăng nhập phải nhiều hơn 5 ký tự</span>"
	                },
	                email: {
	                	required:"<span style='color:red; font-weight:bold'>Email  không được bỏ trống</span>"                	
	                },
	                fullname: {
	                	required:"<span style='color:red; font-weight:bold'>Họ tên không được bỏ trống</span>",
	                	minlength:"<span style='color:red; font-weight:bold'>Họ tên phải nhiều hơn 5 ký tự</span>"
	                },
	                phone: {
	                	required:"<span style='color:red; font-weight:bold'>Số điện thoại không được bỏ trống</span>",
	                	minlength:"<span style='color:red; font-weight:bold'>So dien thoi phai nhieu hon 9 ky tu</span>"
	                },
	                password: {
	                	required:"<span style='color:red; font-weight:bold'>Password không được bỏ trống</span>",
	                	minlength:"<span style='color:red; font-weight:bold'>Password phải nhiều hơn 5 ký tự</span>"
	                }
	            }
	   });
	    }
		</script>
     			
        <!-- start featured services -->  
            <div class="container">
                <div class="row section-title">        <section class="featured-services section-padding">

                    <div class="col col-xs-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2>Thông tin đăng ký của bạn</h2>
                    </div>
                </div> <!-- end section-title -->

                <div class="row content">
                   
                    <div class="col col-xs-12">
                        <form class="form1 row" id="contact-form"  method="post" action="<%=request.getContextPath() %>/register?send=submit">
                            <div class="col col-md-6 left-col">
                            	<input type="text" class="form-control" name="fullname" placeholder="fullname.."><br>
                                <input type="text" class="form-control" name="name" placeholder="user name.."><br>
                                <input type="password" class="form-control" name="password" placeholder="your password.."><br>
                                                                
                            </div>
                            <div class="col col-md-6 right-col">
                            	<input type="text" class="form-control" name="email" placeholder="your email.."><br>
                                <input type="number" class="form-control" name="phone" placeholder="your phone.."><br>                                
                            </div>
                            <div class="col col-md-12">
                                <button type="submit" class="bnt theme-btn">Send</button>
                              
                            </div>
                            <div class="col col-md-12 submission-result">
                                <div id="success">Thank you</div>
                                <div id="error">
                                		<%
                                			int msg=0;
											if(request.getParameter("msg")!=null){
												msg=Integer.parseInt(request.getParameter("msg"));
												if(msg==0) out.print("<span style='color:red; font-weight:bold'>Đăng ký không thành công!!</span>");
												if(msg==1) out.print("<span style='color:red; font-weight:bold'>Username đã tồn tại!!</span>");
												if(msg==2) out.print("<span style='color:red; font-weight:bold'>Email đã tồn tại!!</span>");
											}
										%>
								</div>
                            </div> 
                        </form>
                    </div>
                </div>
                </div>
            <!-- end container -->
        </section>
        <!-- start featured services -->  


          <%@ include file="/template/public/inc/footer.jsp" %>