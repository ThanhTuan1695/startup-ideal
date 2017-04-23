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
                    <h1>Gallery Masonry</h1>
                    <ol class="breadcrumb">
                      <li><a href="#">Home</a></li>
                      <li class="active">Gallery masonry</li>
                    </ol>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->


        <!-- start full-width-project-gallery -->
        <section class="masonry-gallery-section full-width-project-gallery section-padding">
            <div class="container">
                <div class="row section-title">
                    <div class="col col-xs-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2>Our projecty <span>Gallery</span></h2>
                    </div>
                </div> <!-- end section-title -->

                <div class="gallery-content">
                    <ul class="project-filters">
                        <li><a data-filter="*" href="#" class="current">All</a></li>
                        <li><a data-filter=".garden-care" href="#">Garden care </a></li>
                        <li><a data-filter=".lawn" href="#">Lawn</a></li>
                        <li><a data-filter=".plantion" href="#">Plantion</a></li>
                        <li><a data-filter=".snow-removal" href="#">Snow removal</a></li>
                    </ul>

                    <div class="grid-wrapper gallery-popup masonry-gallery">
                        <div class="grid garden-care">
                            <div class="grid-inner">
                                <a href="images/masonry-gallery/big-photo/img-1.jpg">
                                    <div class="img-holder">
                                        <img src="images/masonry-gallery/img-1.jpg" alt class="img img-responsive">
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

                        <div class="grid lawn">
                            <div class="grid-inner">
                                <a href="images/masonry-gallery/big-photo/img-2.jpg">
                                    <div class="img-holder">
                                        <img src="images/masonry-gallery/img-2.jpg" alt class="img img-responsive">
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
                        <div class="grid garden-care lawn">
                            <div class="grid-inner">
                                <a href="images/masonry-gallery/big-photo/img-3.jpg">
                                    <div class="img-holder">
                                        <img src="images/masonry-gallery/img-3.jpg" alt class="img img-responsive">
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
                        <div class="grid lawn plantion">
                            <div class="grid-inner">
                                <a href="images/masonry-gallery/big-photo/img-4.jpg">
                                    <div class="img-holder">
                                        <img src="images/masonry-gallery/img-4.jpg" alt class="img img-responsive">
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
                        <div class="grid garden-care snow-removal">
                            <div class="grid-inner">
                                <a href="images/masonry-gallery/big-photo/img-5.jpg">
                                    <div class="img-holder">
                                        <img src="images/masonry-gallery/img-5.jpg" alt class="img img-responsive">
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
                        <div class="grid garden-care plantion">
                            <div class="grid-inner">
                                <a href="images/masonry-gallery/big-photo/img-6.jpg">
                                    <div class="img-holder">
                                        <img src="images/masonry-gallery/img-6.jpg" alt class="img img-responsive">
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
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end full-width-project-gallery -->

        
          <%@ include file="/templates/public/inc/footer.jsp" %>