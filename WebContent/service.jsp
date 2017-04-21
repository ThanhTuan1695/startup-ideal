<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/templates/public/inc/header.jsp" %>


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
                        <form class="form1 row" id="contact-form"  method="post">
                            <div class="col col-md-6 left-col">
                                <input type="text" class="form-control" name="name" placeholder="your name.."><br>
                                <input type="email" class="form-control" name="email" placeholder="your email.."><br>
                                <input type="text" class="form-control" name="subject" placeholder="subject.."><br>
                            </div>
                            <div class="col col-md-6 right-col">
                                <textarea cols="40" rows="6" class="form-control" name="message" placeholder="write here.."></textarea>
                            </div>
                            <div class="col col-md-12">
                                <button type="submit" class="bnt theme-btn">Send</button>
                              
                            </div>
                            <div class="col col-md-12 submission-result">
                                <div id="success">Thank you</div>
                                <div id="error"> Error occurred while sending email. Please try again later. </div>
                            </div> 
                        </form>
                    </div>
                </div>
                </div>
            <!-- end container -->
        </section>
        <!-- start featured services -->  


      <%@ include file="/templates/public/inc/footer.jsp" %>