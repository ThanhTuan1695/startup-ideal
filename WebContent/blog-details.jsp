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
                    <h1>Blog Details</h1>
                    <ol class="breadcrumb">
                      <li><a href="#">Home</a></li>
                      <li class="active">Blog details</li>
                    </ol>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->


        <!-- start blog-details-section -->
        <section class="blog-details-section section-padding">
            <div class="container">
                <div class="row">

                    <div class="col col-md-8 col-sm-12 grid-news">
                        <div class="post">
                            <div class="entry-header">
                                <div class="entry-media">
                                    <img src="images/news/classic/img-1.jpg" alt class="img img-responsive">
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
                            <div class="entry-details">
                                <div class="entry-title">
                                    <h3><a href="#">Landscaping Adds Value to Your Property</a></h3>
                                    <div class="entry-author-date">
                                        <ul>
                                            <li>Jan 8 2017</li>
                                            <li>By : <a href="#"> Md Hafiz ur Rahman</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="entry-content">
                                    <p>Sed bibendum convallis elementum. Curabitur lacinia feugiat luctus. Suspendisse suscipit augue tortor, ac rutrum est tempor quis. In cursus a urna non venenatis. Pellentesque vulputate ac turpis sit amet iaculis. Nam eleifend nibh sem, eu dapibus magna faucibus sed. Quisque lacus tortor, euismod a ex eu, scelerisque luctus velit. Aenean pretium ex.</p>

                                    <blockquote>Our deep respect for the land and its harvest is the legacy of generations of farmers who put food on our tables, preserved our landscape, and inspired us with a powerful work ethic. </blockquote>
                                    <div class="gallery-post">
                                        <div class="gallery">
                                            <div>
                                                <img src="images/news/details/img-1.jpg" alt class="img img-responsive">
                                            </div>
                                            <div>
                                                <img src="images/news/details/img-2.jpg" alt class="img img-responsive">
                                            </div>
                                        </div>
                                        <p>Ut scelerisque lacus dui, fermentum elementum mauris varius vel. Sed consectetur posuere maximus. Duis vehicula mollis porta. Morbi risus metus, ultricies et erat id, gravida mollis nisi. <a href="#">Curabitur venenatis ante convallis</a> lorem malesuada pulvinar. Morbi mollis, ante vitae cursus porttitor, metus est pulvinar tortor, eget aliquam magna quam nec orci. Phasellus vitae consequat odio. Pellentesque vulputate velit quis aliquam imperdiet. In at ipsum eget nisl suscipit bibendum. Vivamus quam diam, auctor rhoncus odio sit amet, <a href="#">pellentesque convallis felis.</a></p>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- end post -->

                        <div class="share">
                            <span>Share: </span>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                            </ul>
                        </div> <!-- end share -->

                        <div class="comments">
                            <div class="comments-count">
                                <h3><i class="fa fa-commenting-o"></i>Comments <span>(2)</span></h3>
                            </div>

                            <ol class="comments-list">
                                <li>
                                    <div class="article">
                                        <div class="comment-meta">
                                            <div class="comment-author-metadata">
                                                <img src="images/news/comments/img-1.png" alt="">
                                                <div class="metadata">
                                                    <h6 class="author"><a href="#">Admin says</a></h6>
                                                    <span class="date">April 5, 2016 AT 12:45 AM</span> 
                                                </div>
                                            </div>
                                        </div>

                                        <div class="comment-content">
                                            <p>Vestibulum quam nisi, pretium a nibh sit amet, consectetur hendrerit mi. Aenean imperdiet latcus sit amet elit porta, et malesuada erat bibendum. Cras sed nunc massa. Quisque tempor dolor sit amet tellus malesuada.</p>
                                        </div>
                                        <div class="replay"><a href="#"><i class="fa fa-reply"></i></a></div>
                                    </div>
                                    <ol>
                                        <li>
                                            <div class="article">
                                                <div class="comment-meta">
                                                    <div class="comment-author-metadata">
                                                        <img src="images/news/comments/img-2.png" alt="">
                                                        <div class="metadata">
                                                            <h6 class="author"><a href="#">Admin says</a></h6>
                                                            <span class="date">April 5, 2016 AT 12:45 AM</span> 
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="comment-content">
                                                    <p>Vestibulum quam nisi, pretium a nibh sit amet, consectetur hendrerit mi. Aenean imperdiet latcus sit amet elit porta, et malesuada erat bibendum. Cras sed nunc massa. Quisque tempor dolor sit amet tellus malesuada.</p>
                                                </div>
                                                <div class="replay"><a href="#"><i class="fa fa-reply"></i></a></div>
                                            </div>
                                        </li>
                                    </ol>
                                </li>
                            </ol>

                            <div class="comment-respond">
                                <h3><i class="fa fa-reply"></i> Post a comment</h3>
                                <form class="row">
                                    <div class="col col-sm-4 form-group">
                                        <input type="text" class="form-control" placeholder="Your Name" required>
                                    </div>
                                    <div class="col col-sm-4 form-group">
                                        <input type="email" class="form-control" placeholder="E-mail" required>
                                    </div>
                                    <div class="col col-sm-4 form-group">
                                        <input type="text" class="form-control" placeholder="Website (optional)">
                                    </div>
                                    <div class="col col-sm-12 form-group">
                                       <textarea class="form-control" placeholder="Your comment"></textarea>
                                    </div>
                                    <div class="col col-xs-12">
                                        <button class="btn">Send your comment</button>
                                    </div>
                                </form>
                            </div>
                        </div> <!-- end comments -->                      
                    </div> <!-- end col -->

                    <div class="col col-md-4 col-sm-6">
                        <div class="blog-sidebar">
                            <div class="widget search-widget">
                                <form class="form">
                                    <div>
                                        <input type="text" placeholder="Searce" class="form-control" required>
                                        <button type="submit"><span><i class="fa fa-search"></i></span></button>
                                    </div>
                                </form>
                            </div>

                            <div class="widget">
                                <h3><i class="fa fa-paper-plane-o"></i> Category</h3>
                                <ul>
                                    <li><a href="#">Architecture plans</a></li>
                                    <li><a href="#">Interior design</a></li>
                                    <li><a href="#">Exterior design</a></li>
                                    <li><a href="#">repairing</a></li>
                                    <li><a href="#">Landscape design</a></li>
                                </ul>
                            </div>

                            <div class="widget latest-post">
                                <h3><i class="fa fa-wrench"></i> Latest post</h3>
                                <ul>
                                    <li>
                                        <div class="post-image">
                                            <img src="images/news/thumb/img-1.jpg" alt class="img img-responsive">
                                        </div>
                                        <div class="post-details">
                                            <h5><a href="#">Now were up in the big leagues getting</a></h5>
                                            <span class="date">May 20, 2016</span>
                                            <a href="#" class="read-more">Read more</a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-image">
                                            <img src="images/news/thumb/img-2.jpg" alt class="img img-responsive">
                                        </div>
                                        <div class="post-details">
                                            <h5><a href="#">Now were up in the big leagues getting</a></h5>
                                            <span class="date">May 20, 2016</span>
                                            <a href="#" class="read-more">Read more</a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-image">
                                            <img src="images/news/thumb/img-3.jpg" alt class="img img-responsive">
                                        </div>
                                        <div class="post-details">
                                            <h5><a href="#">Now were up in the big leagues getting</a></h5>
                                            <span class="date">May 20, 2016</span>
                                            <a href="#" class="read-more">Read more</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <div class="widget">
                                <h3><i class="fa fa-commenting-o"></i> Quote of the day</h3>
                                <p>In porttitor eleifend libero, vitae lobortis diam. Morbi feugiat nisl nisi, ut vehicula nulla venenatis vel. Etiam in sagittis tellus. Phasellus malesuada volutpat porttitor. Aliquam vitae magna pellentesque ex pretium posuere nec id nulla. Phasellus consequat .</p>
                            </div>

                            <div class="widget popular-tag">
                                <h3><i class="fa fa-commenting-o"></i> Popular tag</h3>
                                <div>
                                    <a href="#">Education</a>
                                    <a href="#">Crisis</a>
                                    <a href="#">Water</a>
                                    <a href="#">Samll business</a>
                                    <a href="#">Giving</a>
                                    <a href="#">Children</a>
                                </div>
                            </div>
                        </div> <!-- end blog-sidebar -->
                    </div> <!-- end col -->
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
        <!-- end blog-details-section -->

        <%@ include file="/templates/public/inc/footer.jsp" %>