<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/templates/public/inc/header.jsp" %>

        <!-- start of hero -->   
        <section class="hero hero-slider-wrapper">
            <div class="hero-slider">
                <div class="slide">
                    <img src="<%=request.getContextPath() %>/templates/public/images/slider/slide-1.jpg" alt>
                    <div class="title">
                        <span>Best Template for</span>
                        <h1>Landcare</h1>
                        <a href="#" class="btn theme-btn">Buy Now</a>
                    </div>
                </div>
                <div class="slide">
                    <img src="<%=request.getContextPath() %>/templates/public/images/slider/slide-2.jpg" alt>
                    <div class="title">
                        <span>Best Template for</span>
                        <h1>Landcare</h1>
                        <a href="#" class="btn theme-btn">Buy Now</a>
                    </div>
                </div>
                <div class="slide">
                    <img src="<%=request.getContextPath() %>/templates/public/images/slider/slide-1.jpg" alt>
                    <div class="title">
                        <span>Best Template for</span>
                        <h1>Landcare</h1>
                        <a href="#" class="btn theme-btn">Buy Now</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- end hero slider -->


        <!-- start how-can-help-you -->  
        <section class="how-can-help-you section-padding">
            <div class="container">
                <div class="row section-title">
                    <div class="col col-xs-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2>How can <span>we help you</span></h2>
                    </div>
                </div> <!-- end section-title -->

                <div class="row">
                    <div class="col col-md-4 wow fadeInLeftSlow">
                        <div class="box">
                            <div class="img-holder">
                                <img src="<%=request.getContextPath() %>/templates/public/images/help/img-1.jpg" alt class="img img-responsive">
                            </div>
                            <div class="details">
                                <a href="#" class="icon"><i class="fa fa-plus" aria-hidden="true"></i></a>
                                <span>dolor sit amet, consectetur</span>
                                <h3>Yard &amp; garden resources</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.</p>
                                <a href="#" class="read-more">Read more <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col col-md-4 wow fadeInLeftSlow" data-wow-delay="0.3s">
                        <div class="box">
                            <div class="img-holder">
                                <img src="<%=request.getContextPath() %>/templates/public/images/help/img-2.jpg" alt class="img img-responsive">
                            </div>
                            <div class="details">
                                <a href="#" class="icon"><i class="fa fa-plus" aria-hidden="true"></i></a>
                                <span>dolor sit amet, consectetur</span>
                                <h3>Natural resources</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.</p>
                                <a href="#" class="read-more">Read more <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col col-md-4 wow fadeInLeftSlow" data-wow-delay="0.6s">
                        <div class="box">
                            <div class="img-holder">
                                <img src="<%=request.getContextPath() %>/templates/public/images/help/img-3.jpg" alt class="img img-responsive">
                            </div>
                            <div class="details">
                                <a href="#" class="icon"><i class="fa fa-plus" aria-hidden="true"></i></a>
                                <span>Monthly gardening tips</span>
                                <h3>Yard &amp; Garden Resources</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.</p>
                                <a href="#" class="read-more">Read more <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- start how-can-help-you -->  

        
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
                                            <img src="<%=request.getContextPath() %>/templates/public/images/about/about-gallery/img-1.jpg" alt class="img img-responsive">
                                        </div>
                                        <div class="hover-text">
                                            <h6>Garden Care &amp; Maintenance</h6>
                                        </div>
                                    </a>
                                </div>
                                <div class="box">
                                    <a href="#">
                                        <div class="img-holder">
                                            <img src="<%=request.getContextPath() %>/templates/public/images/about/about-gallery/img-2.jpg" alt class="img img-responsive">
                                        </div>
                                        <div class="hover-text">
                                            <h6>Garden Care &amp; Maintenance</h6>
                                        </div>
                                    </a>
                                </div>
                                <div class="box">
                                    <a href="#">
                                        <div class="img-holder">
                                            <img src="<%=request.getContextPath() %>/templates/public/images/about/about-gallery/img-3.jpg" alt class="img img-responsive">
                                        </div>
                                        <div class="hover-text">
                                            <h6>Garden Care &amp; Maintenance</h6>
                                        </div>
                                    </a>
                                </div>
                                <div class="box">
                                    <a href="#">
                                        <div class="img-holder">
                                            <img src="<%=request.getContextPath() %>/templates/public/images/about/about-gallery/img-4.jpg" alt class="img img-responsive">
                                        </div>
                                        <div class="hover-text">
                                            <h6>Garden Care &amp; Maintenance</h6>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col col-md-6 about-big-photo-wrapper wow fadeInRightSlow">
                        <h2>Land care</h2>
                        <div class="about-big-photo">
                            <img src="<%=request.getContextPath() %>/templates/public/images/about/about-big-photo.png" alt class="img img-responsive">
                        </div>
                    </div>
                </div>

                <div class="row fun-fact">
                    <div class="col col-sm-3 col-xs-6">
                        <div class="box">
                            <h5>Gardening stores</h5>
                            <img src="<%=request.getContextPath() %>/templates/public/images/funfact-icon.png" alt class="img img-responsive">
                            <h3 class="counter" data-count="44">00</h3>
                        </div>
                    </div>
                    <div class="col col-sm-3 col-xs-6">
                        <div class="box">
                            <h5>Jobs done</h5>
                            <img src="<%=request.getContextPath() %>/templates/public/images/funfact-icon.png" alt class="img img-responsive">
                            <h3 class="counter" data-count="22">00</h3>
                        </div>
                    </div>
                    <div class="col col-sm-3 col-xs-6">
                        <div class="box">
                            <h5>Lanscape worker</h5>
                            <img src="<%=request.getContextPath() %>/templates/public/images/funfact-icon.png" alt class="img img-responsive">
                            <h3 class="counter" data-count="205">00</h3>
                        </div>
                    </div>
                    <div class="col col-sm-3 col-xs-6">
                        <div class="box">
                            <h5>Happy client</h5>
                            <img src="<%=request.getContextPath() %>/templates/public/images/funfact-icon.png" alt class="img img-responsive">
                            <h3 class="counter" data-count="1250">00</h3>
                        </div>
                    </div>
                </div>                
            </div> <!-- end container -->
        </section>
        <!-- end about -->


        <!-- start testimonials -->  
        <section class="testimonials parallax" data-bg-image="images/testimonials/testimonials-bg.jpg">
            <div class="container">
                <div class="row section-title">
                    <div class="col col-xs-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2>Our <span>client</span> says</h2>
                    </div>
                </div> <!-- end section-title -->

                <div class="row">
                    <div class="col col-xs-12">
                        <div class="testimonials-slider">
                            <div class="box">
                                <div class="client-pic-quote">
                                    <div class="pic">
                                        <img src="<%=request.getContextPath() %>/templates/public/images/testimonials/client-pic/img-1.jpg" alt class="img img-responsive img-circle">
                                    </div>
                                    <div class="quote">
                                        <p>Mauris vel ipsum convallis, auctor arcu sed, lobortis ligula. Integer ultricies, nisi ut condimentum ultrices, ante orci aliquet dolor, eget varius sapien sapien</p>
                                    </div>
                                </div>
                                <div class="client-details">
                                    <h5>Martina Roge</h5>
                                    <span class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </span>
                                </div>
                                <div class="client-signature"><img src="images/testimonials/client-signature/img-1.png" alt class="img img-responsive"></div>
                            </div>

                            <div class="box">
                                <div class="client-pic-quote">
                                    <div class="pic">
                                        <img src="<%=request.getContextPath() %>/templates/public/images/testimonials/client-pic/img-1.jpg" alt class="img img-responsive img-circle">
                                    </div>
                                    <div class="quote">
                                        <p>Mauris vel ipsum convallis, auctor arcu sed, lobortis ligula. Integer ultricies, nisi ut condimentum ultrices, ante orci aliquet dolor, eget varius sapien sapien</p>
                                    </div>
                                </div>
                                <div class="client-details">
                                    <h5>Martina Roge</h5>
                                    <span class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </span>
                                </div>
                                <div class="client-signature"><img src="images/testimonials/client-signature/img-1.png" alt class="img img-responsive"></div>
                            </div>

                            <div class="box">
                                <div class="client-pic-quote">
                                    <div class="pic">
                                        <img src="<%=request.getContextPath() %>/templates/public/images/testimonials/client-pic/img-1.jpg" alt class="img img-responsive img-circle">
                                    </div>
                                    <div class="quote">
                                        <p>Mauris vel ipsum convallis, auctor arcu sed, lobortis ligula. Integer ultricies, nisi ut condimentum ultrices, ante orci aliquet dolor, eget varius sapien sapien</p>
                                    </div>
                                </div>
                                <div class="client-details">
                                    <h5>Martina Roge</h5>
                                    <span class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </span>
                                </div>
                                <div class="client-signature"><img src="images/testimonials/client-signature/img-1.png" alt class="img img-responsive"></div>
                            </div>
                        </div> <!-- end testimonials-slider -->
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
        <!-- end testimonials -->


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
                        <img src="<%=request.getContextPath() %>/templates/public/images/why-choose-photo.jpg" alt class="img img-responsive">
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


        <!-- start project-gallery -->
        <section class="project-gallery section-padding parallax gallery-popup" data-bg-image="images/project-gallery/project-gallery-bg.jpg">
            <div>
                <div class="row section-title">
                    <div class="col col-xs-12">
                        <span class="icon"><i class="fi flaticon-sprout"></i></span>
                        <h2><span>Project</span> gallery</h2>
                    </div>
                </div> <!-- end section-title -->

                <div class="project-gallery-slider">
                    <div class="item">
                        <div class="box">
                            <a href="images/project-gallery/big-photo/img-1.jpg">
                                <div class="img-holder">
                                    <img src="<%=request.getContextPath() %>/templates/public/images/project-gallery/img-1.jpg" alt class="img img-responsive">
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
                    <div class="item">
                        <div class="box">
                            <a href="images/project-gallery/big-photo/img-2.jpg">
                                <div class="img-holder">
                                    <img src="<%=request.getContextPath() %>/templates/public/images/project-gallery/img-2.jpg" alt class="img img-responsive">
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
                    <div class="item">
                        <div class="box">
                            <a href="images/project-gallery/big-photo/img-3.jpg">
                                <div class="img-holder">
                                    <img src="<%=request.getContextPath() %>/templates/public/images/project-gallery/img-3.jpg" alt class="img img-responsive">
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
                    <div class="item">
                        <div class="box">
                            <a href="images/project-gallery/big-photo/img-4.jpg">
                                <div class="img-holder">
                                    <img src="<%=request.getContextPath() %>/templates/public/images/project-gallery/img-4.jpg" alt class="img img-responsive">
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
                    <div class="item">
                        <div class="box">
                            <a href="images/project-gallery/big-photo/img-5.jpg">
                                <div class="img-holder">
                                    <img src="<%=request.getContextPath() %>/templates/public/images/project-gallery/img-5.jpg" alt class="img img-responsive">
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
                    <div class="item">
                        <div class="box">
                            <a href="images/project-gallery/big-photo/img-6.jpg">
                                <div class="img-holder">
                                    <img src="<%=request.getContextPath() %>/templates/public/images/project-gallery/img-2.jpg" alt class="img img-responsive">
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
                    <div class="item">
                        <div class="box">
                            <a href="images/project-gallery/big-photo/img-7.jpg">
                                <div class="img-holder">
                                    <img src="<%=request.getContextPath() %>/templates/public/images/project-gallery/img-1.jpg" alt class="img img-responsive">
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
                </div> <!-- end project-gallery-slider -->
            </div> <!-- end container -->
        </section>
        <!-- end project-gallery -->


        <!-- start tips-news -->
        <section class="tips-news section-padding">
            <div class="container">
                <div class="row">
                    <div class="col col-md-4 left-col">
                        <div class="inner-box">
                            <div class="section-title">
                                <span class="icon"><i class="fi flaticon-sprout"></i></span>
                                <h2>Landscare <span>Tips and News</span></h2>
                            </div>
                            <p>Expedita adipisci odio, explicabo fugit quaerat itaque autem, saepe libero quae ut, officia quod magnam! A totam, facere pariatur quam qui est at voluptatem voluptates adipisci aliquid aut voluptatum beatae dicta nemo obcaecati asperiores veniam ali.</p>
                            <a href="#" class="btn theme-btn">
                                <i class="fi flaticon-double-angle-pointing-to-right"></i> Send now
                            </a>
                        </div>
                    </div>

                    <div class="col col-md-8 news grid-news">
                        <div class="post">
                            <div class="entry-header">
                                <div class="entry-media">
                                    <img src="<%=request.getContextPath() %>/templates/public/images/news/img-1.jpg" alt class="img img-responsive">
                                </div>
                                <ul class="entry-meta">
                                    <li>
                                        <a href="#"><i class="fa fa-heart"></i> 32 <span> likes</span></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-comment"></i> 32 <span> Comments</span></a>
                                    </li>
                                </ul>
                                <div class="entry-tag">
                                    <span><i class="fa fa-file-video-o"></i></span>
                                </div>
                            </div>
                            <div class="entry-title">
                                <h3><a href="#">Landscaping adds value to your property</a></h3>
                                <div class="entry-author-date">
                                    <ul>
                                        <li>Jan 8 2017</li>
                                        <li>By : <a href="#"> Md Hafiz ur Rahman</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="entry-content">
                                <p>Duis dignissim nulla vitae elit vulputate, at luctus ante tincidunt. Aliquam nibh libero, molestie venenatis faucibus non, posuere in lectus. Integer at interdum mauris. Vivamus sed neque...</p>
                                <a href="#" class="btn theme-btn">
                                    <i class="fi flaticon-double-angle-pointing-to-right"></i> Read more
                                </a>
                            </div>
                        </div>

                        <div class="post">
                            <div class="entry-header">
                                <div class="entry-media">
                                    <img src="<%=request.getContextPath() %>/templates/public/images/news/img-2.jpg" alt class="img img-responsive">
                                </div>
                                <ul class="entry-meta">
                                    <li>
                                        <a href="#"><i class="fa fa-heart"></i> 32 <span> likes</span></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-comment"></i> 32 <span> Comments</span></a>
                                    </li>
                                </ul>
                                <div class="entry-tag">
                                    <span><i class="fa fa-file-image-o"></i></span>
                                </div>
                            </div>
                            <div class="entry-title">
                                <h3><a href="#">Landscaping adds value to your property</a></h3>
                                <div class="entry-author-date">
                                    <ul>
                                        <li>Jan 8 2017</li>
                                        <li>By : <a href="#"> Md Hafiz ur Rahman</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="entry-content">
                                <p>Duis dignissim nulla vitae elit vulputate, at luctus ante tincidunt. Aliquam nibh libero, molestie venenatis faucibus non, posuere in lectus. Integer at interdum mauris. Vivamus sed neque...</p>
                                <a href="#" class="btn theme-btn">
                                    <i class="fi flaticon-double-angle-pointing-to-right"></i> Read more
                                </a>
                            </div>
                        </div>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
        <!-- end tips-news -->

        
        <!-- start partner -->
        <section class="partner section-padding">
            <h2 class="hidden">Our Partner</h2>
            <div class="container">
                <div class="row">
                    <div class="col col-xs-12">
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath() %>/templates/public/images/partner/img-1.png" alt class="img img-responsive"></a>
                        </div>
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath() %>/templates/public/images/partner/img-2.png" alt class="img img-responsive"></a>
                        </div>
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath() %>/templates/public/images/partner/img-3.png" alt class="img img-responsive"></a>
                        </div>
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath() %>/templates/public/images/partner/img-4.png" alt class="img img-responsive"></a>
                        </div>
                        <div class="box">
                            <a href="#"><img src="<%=request.getContextPath() %>/templates/public/images/partner/img-5.png" alt class="img img-responsive"></a>
                        </div>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
        <!-- end partner -->

<%@ include file="/templates/public/inc/footer.jsp" %>
       