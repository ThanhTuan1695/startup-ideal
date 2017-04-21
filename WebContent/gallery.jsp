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
                    <h1>Dự Án</h1>
                    <ol class="breadcrumb">
                      <li><a href="#">Home</a></li>
                      <li class="active">Gallery</li>
                    </ol>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->


        <!-- start full-width-project-gallery -->
        <section class="full-width-project-gallery section-padding">
            <div class="row section-title">
                <div class="col col-xs-12">
                    <span class="icon"><i class="fi flaticon-sprout"></i></span>
                    <h2>Dự án của chúng tôi</span></h2>
                </div>
            </div> <!-- end section-title -->

            <div class="gallery-content">
                <ul class="project-filters">
                    <li><a data-filter="*" href="#" class="current">All</a></li>
                    <li><a data-filter=".garden-care" href="#">Công nghệ thông tin</a></li>
                    <li><a data-filter=".lawn" href="#">nông nghiệp</a></li>
                    <li><a data-filter=".plantion" href="#">Công nghiệp`</a></li>
                    <li><a data-filter=".snow-removal" href="#">Xây dựng</a></li>
                </ul>

                <div class="grid-wrapper gallery-popup">
                    <div class="grid garden-care">
                        <a href="images/full-width-project-gallery/big-photo/img-1.jpg">
                            <div class="img-holder">
                                <img src="images/full-width-project-gallery/img-1.jpg" alt class="img img-responsive">
                            </div>
                            <div class="hover-text">
                                <div>
                                    <h4>Title here</h4>
                                    <p>Dignissimos ea tempore velit, nam dicta </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="grid lawn">
                        <a href="images/full-width-project-gallery/big-photo/img-2.jpg">
                            <div class="img-holder">
                                <img src="images/full-width-project-gallery/img-2.jpg" alt class="img img-responsive">
                            </div>
                            <div class="hover-text">
                                <div>
                                    <h4>Title here</h4>
                                    <p>Dignissimos ea tempore velit, nam dicta </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="grid garden-care lawn">
                        <a href="images/full-width-project-gallery/big-photo/img-3.jpg">
                            <div class="img-holder">
                                <img src="images/full-width-project-gallery/img-3.jpg" alt class="img img-responsive">
                            </div>
                            <div class="hover-text">
                                <div>
                                    <h4>Title here</h4>
                                    <p>Dignissimos ea tempore velit, nam dicta </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="grid lawn plantion">
                        <a href="images/full-width-project-gallery/big-photo/img-4.jpg">
                            <div class="img-holder">
                                <img src="images/full-width-project-gallery/img-4.jpg" alt class="img img-responsive">
                            </div>
                            <div class="hover-text">
                                <div>
                                    <h4>Title here</h4>
                                    <p>Dignissimos ea tempore velit, nam dicta </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="grid garden-care">
                        <a href="images/full-width-project-gallery/big-photo/img-5.jpg">
                            <div class="img-holder">
                                <img src="images/full-width-project-gallery/img-5.jpg" alt class="img img-responsive">
                            </div>
                            <div class="hover-text">
                                <div>
                                    <h4>Title here</h4>
                                    <p>Dignissimos ea tempore velit, nam dicta </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="grid garden-care plantion">
                        <a href="images/full-width-project-gallery/big-photo/img-6.jpg">
                            <div class="img-holder">
                                <img src="images/full-width-project-gallery/img-6.jpg" alt class="img img-responsive">
                            </div>
                            <div class="hover-text">
                                <div>
                                    <h4>Title here</h4>
                                    <p>Dignissimos ea tempore velit, nam dicta </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="grid garden-care snow-removal">
                        <a href="images/full-width-project-gallery/big-photo/img-7.jpg">
                            <div class="img-holder">
                                <img src="images/full-width-project-gallery/img-7.jpg" alt class="img img-responsive">
                            </div>
                            <div class="hover-text">
                                <div>
                                    <h4>Title here</h4>
                                    <p>Dignissimos ea tempore velit, nam dicta </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="grid snow-removal plantion">
                        <a href="images/full-width-project-gallery/big-photo/img-8.jpg">
                            <div class="img-holder">
                                <img src="images/full-width-project-gallery/img-8.jpg" alt class="img img-responsive">
                            </div>
                            <div class="hover-text">
                                <div>
                                    <h4>Title here</h4>
                                    <p>Dignissimos ea tempore velit, nam dicta </p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <!-- end full-width-project-gallery -->

       <%@ include file="/templates/public/inc/footer.jsp" %>
