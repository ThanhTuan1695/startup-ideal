<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/template/public/inc/header.jsp" %>


        <!-- start page-title -->
        <section class="page-title">
            <div class="container">
                <div class="title">
                    <div class="icon">
                        <img src="images/page-title/icon-1.png" alt>
                    </div>
                    <h1>About us</h1>
                    <ol class="breadcrumb">
                      <li><a href="#">Home</a></li>
                      <li class="active">About</li>
                    </ol>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->

        
        <!-- start how-can-help-you -->  
        <section class="featured-services section-padding">
            <div class="container">
                <div class="row section-title">
                    <div class="col col-xs-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2>How can <span>we help you</span></h2>
                    </div>
                </div> <!-- end section-title -->

                <div class="row content">
                    <div class="col col-md-4 wow fadeInLeftSlow">
                        <div class="box">
                            <div class="img-holder">
                                <img src="<%=request.getContextPath()%>/template/public/images/featured-services/img-1.jpg" alt class="img img-responsive">
                            </div>
                            <div class="details">
                                <span class="icon"><i class="fi flaticon-watering-can"></i></span>
                                <span class="sub-title">dolor sit amet, consectetur</span>
                                <h3>Trimming trees</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.</p>
                                <a href="#" class="read-more">Read more <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col col-md-4 wow fadeInLeftSlow" data-wow-delay="0.3s">
                        <div class="box">
                            <div class="img-holder">
                                <img src="<%=request.getContextPath()%>/template/public/images/featured-services/img-2.jpg" alt class="img img-responsive">
                            </div>
                            <div class="details">
                                <span class="icon"><i class="fi flaticon-lawn-mower"></i></span>
                                <span class="sub-title">dolor sit amet, consectetur</span>
                                <h3>Lawn upkeep</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.</p>
                                <a href="#" class="read-more">Read more <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col col-md-4 wow fadeInLeftSlow" data-wow-delay="0.6s">
                        <div class="box">
                            <div class="img-holder">
                                <img src="<%=request.getContextPath()%>/template/public/images/featured-services/img-3.jpg" alt class="img img-responsive">
                            </div>
                            <div class="details">
                                <span class="icon"><i class="fi flaticon-fence"></i></span>
                                <span class="sub-title">Monthly gardening tips</span>
                                <h3>Hedge trimmming</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.</p>
                                <a href="#" class="read-more">Read more <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- start how-can-help-you -->  


        <!-- start cta-3 -->
        <section class="cta-3">
            <div class="container">
                <div class="row">
                    <div class="col col-md-10 col-md-offset-1">
                        <h2>Flowers are restful to look at. They have <span>neither emotions</span> nor conflicts.</h2>
                        <a href="#" class="btn theme-btn">
                            <i class="fi flaticon-double-angle-pointing-to-right"></i> purchase now
                        </a>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
        <!-- end cat-3 -->


        <!-- start our-team -->
        <section class="our-team section-padding">
            <div class="container">
                <div class="row section-title">
                    <div class="col col-xs-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2>Our <span>expart team</span></h2>
                    </div>
                </div> <!-- end section-title -->

                <div class="row">
                    <div class="col col-sm-4">
                        <div class="member wow slideInUpSlow" data-wow-delay="0.3s">
                            <div class="img-holder">
                                <img src="<%=request.getContextPath()%>/template/public/images/team/img-1.jpg" alt class="img img-responsive">
                            </div>
                            <div class="details">
                                <h3>Michal davidson</h3>
                                <span>Founder</span>
                                <div class="social">
                                    <ul class="social">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        <li><a href="#"><i class="fa fa-digg"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col col-sm-4">
                        <div class="member wow slideInUpSlow" data-wow-delay="0.6s">
                            <div class="img-holder">
                                <img src="<%=request.getContextPath()%>/template/public/images/team/img-2.jpg" alt class="img img-responsive">
                            </div>
                            <div class="details">
                                <h3>Maria pattra</h3>
                                <span>Founder</span>
                                <div class="social">
                                    <ul class="social">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        <li><a href="#"><i class="fa fa-digg"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col col-sm-4">
                        <div class="member wow slideInUpSlow" data-wow-delay="0.9s">
                            <div class="img-holder">
                                <img src="<%=request.getContextPath()%>/template/public/images/team/img-3.jpg" alt class="img img-responsive">
                            </div>
                            <div class="details">
                                <h3>Maria pattra</h3>
                                <span>Founder</span>
                                <div class="social">
                                    <ul class="social">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        <li><a href="#"><i class="fa fa-digg"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
        <!-- end our-team -->


        <!-- start news-letter -->
        <section class="news-letter">
            <div class="container">
                <div class="row">
                    <div class="col col-sm-6">
                        <h2>Subscribe now !!!</h2>
                        <p>Facere tempora quisquam quia unde nesciunt. Mollitia sequi praesentium consequatur.</p>
                    </div>
                    <div class="col col-sm-6">
                        <form action="#">
                            <div>
                                <input type="text" class="form-control" placeholder="Enter your email address" required>
                                <button type="submit" class="btn"><i class="fa fa-send"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end news-letter -->


        <!-- start why-choose-us -->
        <section class="why-choose-us section-padding">
            <div class="container">
                <div class="row section-title">
                    <div class="col col-xs-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2>Why choose <span>landcare</span></h2>
                    </div>
                </div> <!-- end section-title -->

                <div class="row content">
                    <div class="col col-md-3">
                        <div class="wow fadeInLeftSlow">
                            <h3><i class="fi flaticon-lawn-mower"></i> Lawn moving</h3>
                            <p>Facere dolor dolore, debitis consectetur consequuntur eligendi sapiente ad sed quia </p>
                        </div>
                        <div class="wow fadeInLeftSlow" data-wow-delay="0.3s">
                            <h3><i class="fi flaticon-fence"></i> Lawn moving</h3>
                            <p>Facere dolor dolore, debitis consectetur consequuntur eligendi sapiente ad sed quia </p>
                        </div>
                    </div>
                    <div class="col col-md-6 middle-img">
                        <img src="images/why-choose-photo.jpg" alt class="img img-responsive">
                    </div>
                    <div class="col col-md-3">
                        <div class="wow fadeInRightSlow">
                            <h3><i class="fi flaticon-watering-can"></i> Watering garden</h3>
                            <p>Facere dolor dolore, debitis consectetur consequuntur eligendi sapiente ad sed quia </p>
                        </div>
                        <div class="wow fadeInRightSlow" data-wow-delay="0.3s">
                            <h3><i class="fi flaticon-log"></i> Garden care</h3>
                            <p>Facere dolor dolore, debitis consectetur consequuntur eligendi sapiente ad sed quia </p>
                        </div>
                    </div>
                </div> <!-- end content -->
            </div> <!-- end container -->
        </section>
        <!-- end why-choose-us -->


        <!-- start partner -->
        <section class="partner section-padding">
            <h2 class="hidden">Our Partner</h2>
            <div class="container">
                <div class="row">
                    <div class="col col-xs-12">
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath()%>/template/public/images/partner/img-1.png" alt class="img img-responsive"></a>
                        </div>
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath()%>/template/public/images/partner/img-2.png" alt class="img img-responsive"></a>
                        </div>
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath()%>/template/public/images/partner/img-3.png" alt class="img img-responsive"></a>
                        </div>
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath()%>/template/public/images/partner/img-4.png" alt class="img img-responsive"></a>
                        </div>
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath()%>/template/public/images/partner/img-5.png" alt class="img img-responsive"></a>
                        </div>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
        <!-- end partner -->

  <%@ include file="/template/public/inc/footer.jsp" %>