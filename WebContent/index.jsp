<%@page import="bean.Project"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/template/public/inc/header.jsp" %>

        <!-- start of hero -->   
        <section class="hero hero-slider-wrapper">
            <div class="hero-slider">
                <div class="slide">
                    <img src="<%=request.getContextPath() %>/template/public/images/slider/slide-1.jpg" alt>
                    <div class="title">
                        <h1>SE11</h1>
                        <a href="#" class="btn theme-btn">Đăng kí</a>
                    </div>
                </div>
                <div class="slide">
                    <img src="<%=request.getContextPath() %>/template/public/images/slider/slide-2.jpg" alt>
                    <div class="title">
                        <h1>SE11</h1>
                        <a href="#" class="btn theme-btn">Đăng kí</a>
                    </div>
                </div>
                <div class="slide">
                    <img src="<%=request.getContextPath() %>/template/public/images/slider/slide-3.jpg" alt>
                    <div class="title">
                        <h1>SE11</h1>
                        <a href="#" class="btn theme-btn">Đăng kí</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- end hero slider -->
        
		 <!-- start about -->
		<section class="about section-padding">
            <div class="container">
                <div class="row section-title">
                   <div class="col col-xs-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2>Bài đăng nổi bật</h2>
                    </div>
                </div> <!-- end section-title -->

                <div class="row">
                    <div class="col col-md-6">
                        <div class="text-with-gallery">
                            <h4>Startup Việt Nam đáng chú ý nhất trong năm 2016.</span></h4>
                            <p>Trong những năm qua thương mại điện tử và mạng xã hội luôn là lĩnh vực nhận được nhiều ưu ái và lựa chọn để phát triển, nhưng hệ sinh thái khởi nghiệp Việt Nam cũng đang nóng lên bởi những “chiến binh” đến từ các lĩnh vực khác như công nghệ tài chính, công nghệ giáo dục và công nghệ nông nghiệp.
								Trang thông tin Dealstreetasia đã chọn ra năm công ty khởi nghiệp đã đạt được những tiến bộ vượt bậc và có tiềm năng trở thành mục tiêu đáng lựa chọn của các nhà đầu tư.</p>
                            <div class="sm-service-gallery">
                            <%
			                	ArrayList<Project> alHotProject = (ArrayList<Project>)request.getAttribute("alHotProject");

			                	for(Project objHotProject:alHotProject){ 
			                %>
                                <div class="box">
                                    <a href="<%=request.getContextPath() %>/detail?pid=<%=objHotProject.getIdPro() %>">
                                        <div class="img-holder">
                                            <img src="<%=request.getContextPath() %>/file/<%=objHotProject.getPicture() %>" alt class="img img-responsive">
                                        </div>
                                        <div class="hover-text">
                                            <h6><%=objHotProject.getNamePro() %></h6>
                                        </div>
                                    </a>
                                </div>
                             <%
			                	}
                             %>
                            </div>
                        </div>
                    </div>

                    <div class="col col-md-6 about-big-photo-wrapper wow fadeInRightSlow">
                        <div class="about-big-photo">
                            <img src="<%=request.getContextPath() %>/template/public/images/about/img.png" alt class="img img-responsive">
                        </div>
                    </div>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end about -->

        <!-- start how-can-help-you -->  
        <section class="about section-padding">
            <div class="container">
                <div class="row section-title">
                    <div class="col col-xs-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2>Bài đăng mới</h2>
                    </div>
                </div> <!-- end section-title -->
 				<%
                	ArrayList<Project> alNewProject = (ArrayList<Project>)request.getAttribute("alNewProject");
                	for(Project objNewProject:alNewProject){ 
                %>
                <div class="row">
                     <div class="col col-md-4 wow fadeInLeftSlow">
                        <div class="box">
                            <div class="img-holder">
                                <img src="<%=request.getContextPath() %>/file/<%=objNewProject.getPicture() %>" alt class="img img-responsive">
                            </div>
                            <div class="details">
	                            <h3><a href="<%=request.getContextPath() %>/detail?pid=<%=objNewProject.getIdPro() %>" ><%=objNewProject.getNamePro()%></a></h3>
                                <a>Chuyên mục: <%=objNewProject.getNameCat() %></a>
                                <p><%=objNewProject.getPreviewText() %></p>
                                <p>Số lượt xem: <%=objNewProject.getView() %></p>
                                <a href="<%=request.getContextPath() %>/detail?pid=<%=objNewProject.getIdPro() %>" class="read-more">Chi tiết <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
				<%
                	}
				%>
				
                </div>
               
            </div> <!-- end container -->
        </section>
        <!-- start how-can-help-you -->  

       

        <!-- start why-choose-us -->
        <section class="about section-padding">
            <div class="container">
                <div class="row section-title">
                    <div class="col col-xs-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2>Tiêu chí khởi nghiệp</h2>
                    </div>
                </div> <!-- end section-title -->

                <div class="row content">
                    <div class="col col-md-3">
                        <div class="wow fadeInLeftSlow">
                            <h3>Người có cùng đam mê với ý tưởng của bạn</h3>
                            <p>Yếu tố chủ chốt để giữ vững ý tưởng chính là những người có cùng chung đam mê. Hãy kiên nhẫn cho đến khi tìm được người sẵn sàng “ chia lửa” với bạn.</p>
                        </div>
                        <div class="wow fadeInLeftSlow" data-wow-delay="0.3s">
                            <h3>Hợp tác vì mục tiêu chung.</h3>
                            <p>Mâu thuẫn rất dễ xảy ra khi đặt quyền lợi cá nhân của mình quá lớn. Cần hiểu và làm tốt nhất vai trò, công việc của bản thân thì mới dẫn đến sự phát triển lâu dài. </p>
                            
                        </div>
                    </div>
                    <div class="col col-md-6 middle-img">
                        <img src="<%=request.getContextPath() %>/template/public/images/about/image.png" alt class="img img-responsive">
                    </div>
                    <div class="col col-md-3">
                        <div class="wow fadeInRightSlow">
                            <h3>Bổ sung kỹ năng cho nhau</h3>
                            <p>Những người cộng sự có kỹ năng khác nhau và khác bạn có thể hỗ trợ bạn xây dựng ý tưởng dựa trên những kỹ năng mà họ giỏi.</p>
                        </div>
                        <div class="wow fadeInRightSlow" data-wow-delay="0.3s">
                            <h3>Trung thực và đáng tin cậy</h3>
                            <p>Trung thực cần thiết trong hợp tác ở mọi lĩnh vực, đáng tin cậy là sẵn sàng làm những điều đúng đắn ngay cả khi điều đó có thể gây bất lợi cho bản thân.</p>
                        </div>
                    </div>
                </div> <!-- end content -->
            </div> <!-- end container -->
             <div class="row fun-fact">
                    <div class="col col-sm-3 col-xs-6">
                        <div class="box">
                            <h5>Số bài trong ngày</h5>
                            <img src="<%=request.getContextPath() %>/template/public/images/funfact-icon.png" alt class="img img-responsive">
                            <h3 class="counter" data-count="<%=(int)request.getAttribute("numNewProject")%>">00</h3>
                        </div>
                    </div>
                    <div class="col col-sm-3 col-xs-6">
                        <div class="box">
                            <h5>Tổng số bài đăng</h5>
                            <img src="<%=request.getContextPath() %>/template/public/images/funfact-icon.png" alt class="img img-responsive">
                            <h3 class="counter" data-count="<%=(int)request.getAttribute("numProject")%>">00</h3>
                        </div>
                    </div>
                    <div class="col col-sm-3 col-xs-6">
                        <div class="box">
                            <h5>Số lượng thành viên</h5>
                            <img src="<%=request.getContextPath() %>/template/public/images/funfact-icon.png" alt class="img img-responsive">
                            <h3 class="counter" data-count="<%=(int)request.getAttribute("numUser")%>">00</h3>
                        </div>
                    </div>
                    <div class="col col-sm-3 col-xs-6">
                        <div class="box">
                            <h5>Tổng lượt view</h5>
                            <img src="<%=request.getContextPath() %>/template/public/images/funfact-icon.png" alt class="img img-responsive">
                            <h3 class="counter" data-count="<%=(int)request.getAttribute("numView")%>">00</h3>
                        </div>
                    </div>
                </div>      
        </section>
        <!-- end why-choose-us -->

  <%@ include file="/template/public/inc/footer.jsp" %>
