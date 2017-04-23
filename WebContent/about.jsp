<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/templates/public/inc/header.jsp" %>
        <!-- start page-title -->
        <section class="page-title">
            <div class="container">
                <div class="title">
                    <div class="icon">
                        <img src="<%=request.getContextPath()%>/templates/public/images/page-title/icon-1.png" alt>
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

        
        <!-- start about -->
        <section class="about section-padding">
            <div class="container">
                <div class="row section-title">
                    <div class="col col-md-10 col-md-offset-1 col-sm-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2>Nibh euismod tincidunt <span>ut laoreet</span> dolore magna aliquam </h2>
                    </div>
                </div> <!-- end section-title -->

                <div class="row">
                    <div class="col col-md-6">
                        <div class="text-with-gallery">
                            <h4>There are many variations of passages of <span>Lorem Ipsum available.</span></h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                            <div class="sm-service-gallery">
                                <div class="box">
                                    <a href="#">
                                        <div class="img-holder">
                                            <img src="<%=request.getContextPath()%>/templates/public/images/about/about-gallery/img-1.jpg" alt="" class="img img-responsive">
                                        </div>
                                        <div class="hover-text">
                                            <h6>Garden Care &amp; Maintenance</h6>
                                        </div>
                                    </a>
                                </div>
                                <div class="box">
                                    <a href="#">
                                        <div class="img-holder">
                                            <img src="<%=request.getContextPath()%>/templates/public/images/about/about-gallery/img-2.jpg" alt="" class="img img-responsive">
                                        </div>
                                        <div class="hover-text">
                                            <h6>Garden Care &amp; Maintenance</h6>
                                        </div>
                                    </a>
                                </div>
                                <div class="box">
                                    <a href="#">
                                        <div class="img-holder">
                                            <img src="<%=request.getContextPath()%>/templates/public/images/about/about-gallery/img-3.jpg" alt="" class="img img-responsive">
                                        </div>
                                        <div class="hover-text">
                                            <h6>Garden Care &amp; Maintenance</h6>
                                        </div>
                                    </a>
                                </div>
                                <div class="box">
                                    <a href="#">
                                        <div class="img-holder">
                                            <img src="<%=request.getContextPath()%>/templates/public/images/about/about-gallery/img-4.jpg" alt="" class="img img-responsive">
                                        </div>
                                        <div class="hover-text">
                                            <h6>Garden Care &amp; Maintenance</h6>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col col-md-6 about-big-photo-wrapper wow fadeInRightSlow" style="visibility: visible; animation-name: fadeInRightSlow;">
                        <h2>Land care</h2>
                        <div class="about-big-photo">
                            <img src="<%=request.getContextPath()%>/templates/public/images/about/about-big-photo.png" alt="" class="img img-responsive">
                        </div>
                    </div>
                </div>

                <div class="row fun-fact">
                    <div class="col col-sm-3 col-xs-6">
                        <div class="box">
                            <h5>Gardening stores</h5>
                            <img src="<%=request.getContextPath()%>/templates/public/images/funfact-icon.png" alt="" class="img img-responsive">
                            <h3 class="counter" data-count="44">00</h3>
                        </div>
                    </div>
                    <div class="col col-sm-3 col-xs-6">
                        <div class="box">
                            <h5>Jobs done</h5>
                            <img src="<%=request.getContextPath()%>/templates/public/images/funfact-icon.png" alt="" class="img img-responsive">
                            <h3 class="counter" data-count="22">00</h3>
                        </div>
                    </div>
                    <div class="col col-sm-3 col-xs-6">
                        <div class="box">
                            <h5>Lanscape worker</h5>
                            <img src="<%=request.getContextPath()%>/templates/public/images/funfact-icon.png" alt="" class="img img-responsive">
                            <h3 class="counter" data-count="205">00</h3>
                        </div>
                    </div>
                    <div class="col col-sm-3 col-xs-6">
                        <div class="box">
                            <h5>Happy client</h5>
                            <img src="<%=request.getContextPath()%>/templates/public/images/funfact-icon.png" alt="" class="img img-responsive">
                            <h3 class="counter" data-count="1250">00</h3>
                        </div>
                    </div>
                </div>                
            </div> <!-- end container -->
        </section>
        <!-- end about -->


        <!-- start intor -->
        <section class="intro parallax" data-bg-image="images/intro-bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col col-md-3 text">
                        <h2>Strat your <span>porject now</span></h2>
                        <p>nesciunt tenetur nobis tempore! Hic repudiandae doloremque, rem quaerat nulla porro </p>
                    </div>

                    <div class="col col-md-9">
                        <div>
                            <form class="form form-inline" method="post">
                                <div class="row">
                                    <div class="form-group col col-xs-4">
                                        <i class="fi flaticon-people" aria-hidden="true"></i>
                                        <input type="text" class="form-control"  name="full_name" placeholder="Full Name*" required>
                                    </div>
                                    <div class="form-group col col-xs-4">
                                        <i class="fi flaticon-people" aria-hidden="true"></i>
                                        <input type="text" class="form-control"  name="last_name" placeholder="Last Name*" required>
                                    </div>
                                    <div class="form-group col col-xs-4">
                                        <i class="fi flaticon-contact" aria-hidden="true"></i>
                                        <input type="email" class="form-control"  name="email" placeholder="Email*" required>
                                    </div>
                                    <div class="form-group col col-xs-8">
                                        <i class="fi flaticon-portfolio-black-symbol" aria-hidden="true"></i>
                                        <select name="services" class="form-control">
                                            <option disabled="disabled" selected>Services</option>
                                            <option>Services 1</option>
                                            <option>Services 2</option>
                                            <option>Services 3</option>
                                            <option>Services 4</option>
                                        </select>
                                    </div>
                                    <div class="form-group col col-xs-4">
                                        <i class="fi flaticon-location" aria-hidden="true"></i>
                                        <input type="text" class="form-control"  name="city" placeholder="City*" required>
                                    </div>
                                    <div class="textarea form-group col col-sm-8 col-xs-12">
                                        <i class="fi flaticon-question"></i>
                                        <textarea name="notes" class="form-control" placeholder="Your Message ?" ></textarea>
                                    </div>      
                                    <div class="form-group col col-xs-4">
                                        <button type="submit" class="btn btn-default theme-btn"><i class="fa fa-compass" aria-hidden="true"></i> Send now</button>
                                   </div>      
                              </div>
                            </form> <!-- end of form -->
                        </div>
                    </div>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end start intor -->        


        <!-- start how-can-help-you -->  
        <section class="featured-services section-padding">
            <div class="container">
                <div class="row section-title">
                    <div class="col col-xs-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2>Our featured <span>services</span></h2>
                    </div>
                </div> <!-- end section-title -->

                <div class="row content">
                    <div class="col col-md-4 wow fadeInLeftSlow">
                        <div class="box">
                            <div class="img-holder">
                                <img src="<%=request.getContextPath()%>/templates/public/images/featured-services/img-1.jpg" alt class="img img-responsive">
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
                                <img src="<%=request.getContextPath()%>/templates/public/images/featured-services/img-2.jpg" alt class="img img-responsive">
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
                                <img src="<%=request.getContextPath()%>/templates/public/images/featured-services/img-3.jpg" alt class="img img-responsive">
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


        <!-- start cta -->
        <section class="cta-home2">
            <div class="container-fluid">
                <div class="row">
                    <div class="col col-sm-6 left-col">
                        <div class="top-img-holder">
                            <img src="<%=request.getContextPath()%>/templates/public/images/cta/img-1.jpg" alt class="wow bounceInUp" data-wow-delay="0.6s">
                        </div>
                        <div class="bottom-img-holder">
                            <img src="<%=request.getContextPath()%>/templates/public/images/cta/img-2.jpg" alt>
                        </div>
                    </div>
                    <div class="col col-sm-6 right-col">
                        <div class="col-inner">
                            <h2>How can we help?</h2>
                            <p>Vero ratione consequuntur, autem voluptatum illo possimus, sit obcaecati ullam, facere tempora quisquam quia unde nesciunt.</p>
                            <h3>+123 4567 890</h3>
                        </div>
                    </div>
                </div>
            </div> <!-- end container-fluid -->
        </section>
        <!-- end cta -->


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
                                <img src="<%=request.getContextPath()%>/templates/public/images/team/img-1.jpg" alt class="img img-responsive">
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
                                <img src="<%=request.getContextPath()%>/templates/public/images/team/img-2.jpg" alt class="img img-responsive">
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
                                <img src="<%=request.getContextPath()%>/templates/public/images/team/img-3.jpg" alt class="img img-responsive">
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


        <!-- start partner -->
        <section class="partner section-padding">
            <h2 class="hidden">Our Partner</h2>
            <div class="container">
                <div class="row">
                    <div class="col col-xs-12">
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath()%>/templates/public/images/partner/img-1.png" alt class="img img-responsive"></a>
                        </div>
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath()%>/templates/public/images/partner/img-2.png" alt class="img img-responsive"></a>
                        </div>
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath()%>/templates/public/images/partner/img-3.png" alt class="img img-responsive"></a>
                        </div>
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath()%>/templates/public/images/partner/img-4.png" alt class="img img-responsive"></a>
                        </div>
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath()%>/templates/public/images/partner/img-5.png" alt class="img img-responsive"></a>
                        </div>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
        <!-- end partner -->

  <%@ include file="/templates/public/inc/footer.jsp" %>
