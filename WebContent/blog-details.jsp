<%@page import="bean.Category"%>
<%@page import="bean.Project"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/template/public/inc/header.jsp" %>
        <!-- start page-title -->
        <section class="page-title">
            <div class="container">
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->


        <!-- start blog-details-section -->
        <section class="blog-details-section section-padding">
            <div class="container">
                <div class="row">

                    <div class="col col-md-8 col-sm-12 grid-news">
                    <%
                    	Project objProject = (Project)request.getAttribute("objProject");
                    %>
                        <div class="post">
                            <div class="entry-header">
                                <div class="entry-media">
                                    <img src="<%=request.getContextPath()%>/file/<%=objProject.getPicture() %>" alt class="img img-responsive">
                                </div>
                                <ul class="entry-meta">
                                    <li>
                                        <a href="#"><i class="fa fa-heart"></i> <%=objProject.getView() %> <span> views</span></a>
                                    </li>
                                </ul>
                                <div class="entry-tag">
                                    <span><i class="fa fa-file-video-o"></i></span>
                                </div>
                            </div>
                            <div class="entry-details">
                                <div class="entry-title">
                                    <h3><a href="#"><%=objProject.getNamePro() %></a></h3>
                                    <div class="entry-author-date">
                                        <ul>
                                        	<li><%=objProject.getTimeCreate() %>  &nbsp;</li>
                                            <li> Đăng bởi : <%=objProject.getNameUser() %> &nbsp;</li>
                                            <li> Danh mục : <a href=" "><%=objProject.getNameCat()%></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="entry-content">
                                    <p style='color:gray; font-weight:bold;text-align:justify'><%=objProject.getPreviewText() %></p>

                                    <div class="gallery-post">
                                        <p style="text-align:justify"><%=objProject.getDescribe() %></p>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- end post -->

                        <div class="comments">
                           <div class="comment-respond">
                            <script>
							  window.fbAsyncInit = function() {
							    FB.init({
							      appId      : '1459954534026891',
							      xfbml      : true,
							      version    : 'v2.9'
							    });
							    FB.AppEvents.logPageView();
							  };
							
							  (function(d, s, id){
							     var js, fjs = d.getElementsByTagName(s)[0];
							     if (d.getElementById(id)) {return;}
							     js = d.createElement(s); js.id = id;
							     js.src = "//connect.facebook.net/en_US/sdk.js";
							     fjs.parentNode.insertBefore(js, fjs);
							   }(document, 'script', 'facebook-jssdk'));
							</script>
                                <h3><i class="fa fa-reply"></i> Post a comment</h3>
                                <div class="fb-comments" data-href="http://startup.com.vn?pid=<%=objProject.getIdPro() %>" data-colorscheme="light"  data-numposts="5" data-width="750"></div>
                            </div>
                        </div> <!-- end comments -->                      
                    </div> <!-- end col -->

                    <div class="col col-md-4 col-sm-6">
                        <div class="blog-sidebar">
                            <div class="widget">
                                <h3><i class="fa fa-paper-plane-o"></i> Danh mục</h3>
                                 <!-- ----------------Chèn link vào danh mục tương ứng------------------ -->
                                <ul>
                                <%
                                	ArrayList<Category> alCat = (ArrayList<Category>)request.getAttribute("alCategory");
                                	for(Category objCat:alCat){
                                %>
                                    <li><a href="<%=objCat.getId_cat() %>"><%=objCat.getName_cat() %></a></li>
                                <%
                                	}    
                                %>
                                </ul>
                            </div>

                            <div class="widget latest-post">
                                <h3><i class="fa fa-wrench"></i> Tin liên quan</h3>
                                <ul>
                                 <%
                                	ArrayList<Project> alProj = (ArrayList<Project>)request.getAttribute("alProjLQ");
                                	for(Project objPro:alProj){
                               	 %>
                                    <li>
                                        <div class="post-image">
                                            <img src="<%=request.getContextPath()%>/file/<%=objPro.getPicture() %>" alt class="img img-responsive">
                                        </div>
                                        <div class="post-details">
                                            <h5><a href="<%=request.getContextPath()%>/detail?pid=<%=objPro.getIdPro() %>"><%=objPro.getNamePro() %></a></h5>
                                            <span class="date"><%=objPro.getTimeCreate() %></span>
                                            <a href="<%=request.getContextPath()%>/detail?pid=<%=objPro.getIdPro() %>" class="read-more">Chi tiết</a>
                                        </div>
                                    </li>
								<%
                                	}
								%>
                                </ul>
                            </div>
                        </div> <!-- end blog-sidebar -->
                    </div> <!-- end col -->
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
        <!-- end blog-details-section -->

        
    <%@ include file="/template/public/inc/footer.jsp" %>
