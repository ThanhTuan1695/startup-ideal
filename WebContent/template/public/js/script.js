(function($) {

	"use strict";


    /*------------------------------------------
        = FUNCTIONS
    -------------------------------------------*/
    // Toggle mobile navigation
    function toggleMobileNavigation() {
        var navbar = $("#navbar");
        var navLinks = $("#navbar > ul > li > a:not(.dropdown-toggle)");
        var openBtn = $(".navbar-header .open-btn");
        var closeBtn = $("#navbar .close-navbar");

        openBtn.on("click", function() {
            if (!navbar.hasClass("slideInn")) {
                navbar.addClass("slideInn");
            }
            return false;
        })

        closeBtn.on("click", function() {
            if (navbar.hasClass("slideInn")) {
                navbar.removeClass("slideInn");
            }
            return false;            
        })
    }

    toggleMobileNavigation();

   
    // Function for toggle small navigation class
    function ToggleMobileMenuClass() {
        var viportwidth = window.innerWidth;
        var navBar = $("#navbar > ul");

        if (viportwidth <= 991) {
            if (!navBar.hasClass("small-nav")) {
               navBar.addClass("small-nav");
            }
        } else {
             navBar.removeClass("small-nav");
        }
    }

    // Small navigation functionality
    function smallNavFunctionality() {
        if ($(".small-nav").length) {
            var smallNav = $(".small-nav"),
                subMenu = smallNav.find(".sub-menu"),
                subMenuLink = subMenu.find(" > a"),
                subSubMenu = smallNav.find(".sub-sub-menu"),
                subSubMenuLink = subSubMenu.find(" > a");
            
            subMenu.find("ul").hide();

            subMenuLink.on("click", function(e) {
                e.preventDefault();
                $(this).next().slideToggle();
                return false;
            });

            subSubMenuLink.on("click", function(e) {
                e.preventDefault();
                $(this).next().slideToggle();
                return false;
            })
        }
    }


    // Parallax background
    function bgParallax() {
        if ($(".parallax").length) {
            $(".parallax").each(function() {
                var height = $(this).position().top;
                var resize     = height - $(window).scrollTop();
                var doParallax = -(resize/5);
                var positionValue   = doParallax + "px";
                var img = $(this).data("bg-image");

                $(this).css({
                    backgroundImage: "url(" + img + ")",
                    backgroundPosition: "50%" + positionValue,
                    backgroundSize: "cover"
                });
            });
        }
    }


    // Hero slider background setting
    function sliderBgSetting() {
        if ($(".hero-slider .slide").length) {
            $(".hero-slider .slide").each(function() {
                var $this = $(this);
                var img = $this.children(img);
                var imgSrc = img.attr("src");

                $this.css({
                    backgroundImage: "url("+ imgSrc +")",
                    backgroundSize: "cover",
                    backgroundPosition: "center center"
                })
            });
        }
    }


    // function for setting two coloumn equal height
    function setEqualHeight($col1, $col2) {
        var col1 = $col1,
            col2 = $col2,
            col1Height = col1.innerHeight(),
            col2Height = col2.innerHeight();

        if (col1Height > col2Height) {
            col2.css({
                height: col1Height + "px"
            });
        } else {
            col1.css({
                height: col2Height + "px"
            });
        }
    }


    /*------------------------------------------
        = HIDE PRELOADER
    -------------------------------------------*/
    function preloader() {
        if($('.preloader').length) {
            $('.preloader').delay(100).fadeOut(500, function() {

                //active wow
                wow.init();

                // Call slider parallax function
                sliderBgSetting();

                 if ($(".hero-slider").length) {
                    $(".hero-slider").owlCarousel({
                        items: 1,
                        //autoplay: true,
                        mouseDrag: false,
                        loop: true,
                        nav: true,
                        navText: ["<i class='fa fa-long-arrow-left'></i>","<i class='fa fa-long-arrow-right'></i>"],
                        autoplaySpeed: 700,
                        navSpeed: 700,
                        dotsSpeed: 700
                    });
                }
            });
        }
    } 


    /*------------------------------------------
        = HOME THREE SLIDER
    -------------------------------------------*/
    function initNivoSlider() {
        if ($("#main-slider").length) {
            $("#main-slider").nivoSlider({
                effect: 'random', 
                slices: 25,                       
                boxCols: 8,                       
                boxRows: 4,                       
                animSpeed: 500,    
                controlNavThumbs: true,
                pauseOnHover: true,
                pauseTime: 9000,
                prevText: '',                
                nextText: ''
            });
        }
    }

    initNivoSlider();



    /*------------------------------------------
        = STICKY HEADER
    -------------------------------------------*/
    $(window).on("scroll", function() {
        if ($(".header-style-one").length) {
            var mainNav = $("#main-nav");
            var scroll = $(window).scrollTop();
            var top = $(".hero").height();

            if (scroll > top) {
                mainNav.addClass("sticky");
            } else {
                mainNav.removeClass("sticky");
            }
        }
    });

    $(window).on("scroll", function() {
        if ($(".header-style-two").length) {
            var mainNav = $("#main-nav");
            var scroll = $(window).scrollTop();
            var top = $(".topbar").height();

            if (scroll > top) {
                mainNav.addClass("sticky-2");
            } else {
                mainNav.removeClass("sticky-2");
            }
        }
    });


    /*------------------------------------------
        = WOW ANIMATION SETTING
    -------------------------------------------*/
    var wow = new WOW({
        boxClass:     'wow',      // default
        animateClass: 'animated', // default
        offset:       0,          // default
        mobile:       true,       // default
        live:         true        // default
    });


    /*------------------------------------------
        = FUNFACT
    -------------------------------------------*/  
    if ($(".fun-fact").length) {

        $('.counter').appear();

        $(document.body).on('appear', '.counter', function(e) {
            var $this = $(this),
            countTo = $this.attr('data-count');

            $({ countNum: $this.text()}).animate({
                countNum: countTo
            }, {
                duration: 3000,
                easing:'linear',
                step: function() {
                    $this.text(Math.floor(this.countNum));
                },
                complete: function() {
                    $this.text(this.countNum);
                }
            });
        });
    }    


    /*------------------------------------------
        = TESTIMONIALS SLIDER
    -------------------------------------------*/  
    if ($(".testimonials-slider").length) {
        $(".testimonials-slider").owlCarousel({
            items: 2,
            margin: 30,
            dots: false,
            responsive: {
                0: {
                    items: 1
                },

                767: {
                    items: 1
                },

                768: {
                    items: 2
                }
            }
        })
    }    


    /*------------------------------------------
        = PROJECT GALLERY SLIDER
    -------------------------------------------*/  
    if ($(".project-gallery-slider").length) {
        $(".project-gallery-slider").owlCarousel({
            items: 5,
            margin: 20,
            responsive: {
                0: {
                    items: 1
                },

                500: {
                    items: 2
                },

                767: {
                    items: 3
                },

                991: {
                    items: 4
                },

                1200: {
                    items: 5
                }
            }
        })
    }  


    /*------------------------------------------
        = GALLERY POPUP
    -------------------------------------------*/  
    if ($('.gallery-popup').length) {
        $('.gallery-popup').magnificPopup({
            delegate: 'a', 
            type: 'image',
            gallery: {
                enabled: true
            },

            zoom: {
                enabled: true,
                duration: 300,
                easing: 'ease-in-out', 
                opener: function(openerElement) {
                    return openerElement.is('img') ? openerElement : openerElement.find('img');
                }
            }
        }); 
    }


    /*------------------------------------------
        = PROJECT GALLERY SORTING
    -------------------------------------------*/  
    function projectGalleryFiltering() {
        if ($(".full-width-project-gallery").length || $(".gallery-title-section").length) {
            var $container = $('.grid-wrapper');
            $container.isotope({
                filter:'*',
                animationOptions: {
                    duration: 750,
                    easing: 'linear',
                    queue: false,
                }
            });

            $(".project-filters li a").on("click", function(e) {
                $('.project-filters li a.current').removeClass('current');
                $(this).addClass('current');
                var selector = $(this).attr('data-filter');
                $container.isotope({
                    filter:selector,
                    animationOptions: {
                        duration: 750,
                        easing: 'linear',
                        queue: false,
                    }
                });
                return false;
            });
        }
    }


    /*------------------------------------------
        = VIDEO POPUP
    -------------------------------------------*/  
    if ($(".video-btn").length) {
        $(".video-btn").on("click", function(){
            $.fancybox({
                href: this.href,
                type: $(this).data("type"),
                'title' : this.title,
                helpers : {  
                    title : { type : 'inside' },
                    media : {}
                },

                beforeShow : function(){
                    $(".fancybox-wrap").addClass("gallery-fancybox");
                }
            });

            return false
        });    
    }


    /*------------------------------------------
        = MASONRY GALLERY SETTING
    -------------------------------------------*/
    function masonryGridSetting() {
        if ($('.masonry-gallery').length) {
            var $grid =  $('.masonry-gallery').masonry({
                itemSelector: '.grid',
                columnWidth: '.grid',
                percentPosition: true
            });

            $grid.imagesLoaded().progress( function() {
                $grid.masonry('layout');
            });
        }
    }

    masonryGridSetting();


    /*------------------------------------------
        = GALLERY SINGLE SLIDER
    -------------------------------------------*/
    if ($(".gallery-single-slider").length) {
        $('.slider-for').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            fade: true,
            asNavFor: '.slider-nav'
        });
        $('.slider-nav').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            vertical: true,
            asNavFor: '.slider-for',
            focusOnSelect: true,
            verticalSwiping: true,
            responsive: [
                {
                  breakpoint: 767,
                  vertical: false,
                  settings: {
                    slidesToShow: 3,
                    infinite: true
                  }
                }
            ]

        });
    }


    /*------------------------------------------
        = CONTACT FORM SUBMISSION
    -------------------------------------------*/  
    if ($("#contact-form").length) {
        $("#contact-form").validate({
            rules: {
                name: {
                    required: true,
                    minlength: 2
                },
                email: "required",
                
                subject: {
                    required: true
                }

            },

            messages: {
                name: "Please enter your name",
                email: "Please enter your email",
                subject: "Enter your subject"
            },

            submitHandler: function (form) {
                $.ajax({
                    type: "POST",
                    url: "mail.php",
                    data: $(form).serialize(),
                    success: function () {
                        $( "#loader").hide();
                        $( "#success").slideDown( "slow" );
                        setTimeout(function() {
                        $( "#success").slideUp( "slow" );
                        }, 3000);
                        form.reset();
                    },
                    error: function() {
                        $( "#loader").hide();
                        $( "#error").slideDown( "slow" );
                        setTimeout(function() {
                        $( "#error").slideUp( "slow" );
                        }, 3000);
                    }
                });
                return false; 
            }

        });
    }



    /*------------------------------------------
        = GOOGLE MAP
    -------------------------------------------*/  
    function map() {

        var myLatLng = new google.maps.LatLng(36.169941,-115.139830);
        var mapProp = {
            center: myLatLng,
            zoom: 11,
            scrollwheel: false,
            mapTypeId: google.maps.MapTypeId.ROAD
        };

        var map = new google.maps.Map(document.getElementById("google-map"),mapProp);
        
        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map
        });

        marker.setMap(map);

        map.set('styles',
            [{
                "featureType": "water",
                "elementType": "geometry",
                "stylers": [{
                    "color": "#a0c5ff"
                }, {
                    "lightness": 17
                }]
            }, {
                "featureType": "landscape",
                "elementType": "geometry",
                "stylers": [{
                    "color": "#fff"
                }, {
                    "lightness": 20
                }]
            }, {
                "featureType": "road.highway",
                "elementType": "geometry.fill",
                "stylers": [{
                    "color": "#fff"
                }, {
                    "lightness": 5
                }]
            }, {
                "featureType": "road.highway",
                "elementType": "geometry.stroke",
                "stylers": [{
                    "color": "#fff"
                }, {
                    "lightness": 29
                }, {
                    "weight": 0.2
                }]
            }, {
                "featureType": "road.arterial",
                "elementType": "geometry",
                "stylers": [{
                    "color": "#ecc64d"
                }, {
                    "lightness": 18
                }]
            }, {
                "featureType": "road.local",
                "elementType": "geometry",
                "stylers": [{
                    "color": "#ecc64d"
                }, {
                    "lightness": 16
                }]
            }]
        );
    }; 


    /*==========================================================================
        WHEN DOCUMENT LOADING 
    ==========================================================================*/
        $(window).on('load', function() {

            preloader();

            ToggleMobileMenuClass();  

            smallNavFunctionality();          

            sliderBgSetting();

            bgParallax();

            masonryGridSetting();


            projectGalleryFiltering();

            if ($(".map").length) {
                map();
            }

            // home 2 cta make two coloumn equal height
            if ($(".cta-home2").length) {
                setEqualHeight($(".left-col"), $(".right-col"));
            }

            // home 3 why choose us two section make equal height
            if ($(".why-choose-us-s2").length) {
                setEqualHeight($(".why-choose-us-s2 .left-col"), $(".why-choose-us-s2 .right-col"));
            }

        });


    /*==========================================================================
        WHEN WINDOW SCROLL
    ==========================================================================*/
    $(window).on("scroll", function() {
        bgParallax();

    });


    /*==========================================================================
        WHEN WINDOW RESIZE
    ==========================================================================*/
    $(window).on("resize", function() {

        ToggleMobileMenuClass();
        
        if ($(".cta-home2").length) {
            setEqualHeight($(".left-col"), $(".right-col"));
        }

        // home 3 why choose us two section make equal height
        if ($(".why-choose-us-s2").length) {
            setEqualHeight($(".why-choose-us-s2 .left-col"), $(".why-choose-us-s2 .right-col"));
        }
    });


})(window.jQuery);
