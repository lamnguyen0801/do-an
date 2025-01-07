<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from htmldemo.net/ruiz/ruiz/frequently-questions.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 24 Mar 2023 08:01:35 GMT -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Q&A</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="resource/images/favicon.ico">

    <!-- CSS
	============================================ -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resource/css/vendor/bootstrap.min.css">
    <!-- Icon Font CSS -->
    <link rel="stylesheet" href="resource/css/vendor/font-awesome.min.css">
    <link rel="stylesheet" href="resource/css/vendor/simple-line-icons.css">

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="resource/css/plugins/animation.css">
    <link rel="stylesheet" href="resource/css/plugins/slick.css">
    <link rel="stylesheet" href="resource/css/plugins/animation.css">
    <link rel="stylesheet" href="resource/css/plugins/nice-select.css">
    <link rel="stylesheet" href="resource/css/plugins/fancy-box.css">
    <link rel="stylesheet" href="resource/css/plugins/jqueryui.min.css">

    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from avobe) -->
    <!--
    <script src="resource/js/vendor/vendor.min.js"></script>
    <script src="resource/js/plugins/plugins.min.js"></script>
    -->

    <!-- Main Style CSS (Please use minify version for better website load performance) -->
    <link rel="stylesheet" href="resource/css/style.css">
    <!--<link rel="stylesheet" href="assets/css/style.min.css">-->

</head>

<body>

    <div class="main-wrapper">

        <!--  Header Start -->
        <header class="header">

            <!-- Header Top Start -->
            <div class="header-top-area d-none d-lg-block text-color-white bg-gren border-bm-1">

                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="header-top-settings">
                                <ul class="nav align-items-center">
                                    <li class="language">English <i class="fa fa-angle-down"></i>
                                        <ul class="dropdown-list">
                                            <li><a href="#">English</a></li>
                                            <li><a href="#">French</a></li>
                                        </ul>
                                    </li>
                                    <li class="curreny-wrap">Currency <i class="fa fa-angle-down"></i>
                                        <ul class="dropdown-list curreny-list">
                                            <li><a href="#">$ USD</a></li>
                                            <li><a href="#"> € EURO</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="top-info-wrap text-end">
                                <ul class="my-account-container">
                                    <li><a href="my-account.html">My account</a></li>
                                    <li><a href="cart.html">Cart</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- Header Top End -->

            <!-- haeader Mid Start -->
            <div class="haeader-mid-area bg-gren border-bm-1 d-none d-lg-block ">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-4 col-5">
                        <div class="logo-area" width="200px">
                                <a href="<?= BASE_URL . '/ ' ?>" class="text-decoration-none text-white fw-bold fs-4"><iconify-icon icon="ic:baseline-watch"></iconify-icon> <span class="">F-Watch</span></a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="search-box-wrapper" style="margin-left: 70px;">
                                <div class="search-box-inner-wrap">
                                    <form class="search-box-inner" action="<?= BASE_URL . '/homeshow' ?>" method="post">
                                        
                                        <div class="search-field-wrap">
                                            <input type="text" class="search-field" placeholder="Search product..." name="tim-kiem-san-pham">

                                            <div class="search-btn">
                                                <button><i class="icon-magnifier"></i></button>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="right-blok-box text-white d-flex">

                                

                                <div class="shopping-cart-wrap">
                                    <a href="<?= BASE_URL . '/cart ' ?>"><i class="icon-basket-loaded"></i></a>
                                    
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- haeader Mid End -->

            <!-- haeader bottom Start -->
            <div class="haeader-bottom-area bg-gren header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12 d-none d-lg-block">
                            <div class="main-menu-area white_text">
                                <!--  Start Mainmenu Nav-->
                                <nav class="main-navigation text-center">
                                    <ul>
                                        <li class="active"><a href="<?= BASE_URL . '/ ' ?>">Home</a>
                                        
                                        </li>

                                        <li><a href="<?= BASE_URL . '/danhmuc' ?>">Sản Phẩm</a>

                                        </li>
                                       
                                        <li><a href="<?= BASE_URL . '/about' ?>">Giới Thiệu</a></li>
                                        <li><a href="<?= BASE_URL . '/question' ?>">Hỏi Đáp</a></li>
                                    </ul>
                                </nav>

                            </div>
                        </div>

                        <div class="col-5 col-md-6 d-block d-lg-none">
                            <div class="logo"><a href="index.html"><img src="assets/images/logo/logo.png" alt=""></a></div>
                        </div>


                        <div class="col-lg-3 col-md-6 col-7 d-block d-lg-none">
                            <div class="right-blok-box text-white d-flex">

                                <div class="user-wrap">
                                    <a href="wishlist.html"><span class="cart-total">2</span> <i class="icon-heart"></i></a>
                                </div>

                                <div class="shopping-cart-wrap">
                                    <a href="#"><i class="icon-basket-loaded"></i><span class="cart-total">2</span></a>
                                    
                                </div>

                                <div class="mobile-menu-btn d-block d-lg-none">
                                    <div class="off-canvas-btn">
                                        <a href="#"><img src="assets/images/icon/bg-menu.png" alt=""></a>
                                    </div>
                                </div>

                            </div>
                        </div>



                    </div>
                </div>
            </div>
            <!-- haeader bottom End -->

            <!-- off-canvas menu start -->
            <aside class="off-canvas-wrapper">
                <div class="off-canvas-overlay"></div>
                <div class="off-canvas-inner-content">
                    <div class="btn-close-off-canvas">
                        <i class="fa fa-times"></i>
                    </div>

                    <div class="off-canvas-inner">

                        <div class="search-box-offcanvas">
                            <form>
                                <input type="text" placeholder="Search product...">
                                <button class="search-btn"><i class="icon-magnifier"></i></button>
                            </form>
                        </div>

                        <!-- mobile menu start -->
                        <div class="mobile-navigation">

                            <!-- mobile menu navigation start -->
                            <nav>
                                <ul class="mobile-menu">
                                <li class="active"><a href="<?= BASE_URL . '/ ' ?>">Home</a>
                                        
                                        </li>

                                        <li><a href="<?= BASE_URL . '/danhmuc' ?>">Sản Phẩm</a>

                                        </li>
                                       
                                        <li><a href="<?= BASE_URL . '/about' ?>">Giới Thiệu</a></li>
                                        <li><a href="<?= BASE_URL . '/question' ?>">Hỏi Đáp</a></li>
                                </ul>
                            </nav>
                            <!-- mobile menu navigation end -->
                        </div>
                        <!-- mobile menu end -->


                        <div class="header-top-settings offcanvas-curreny-lang-support">
                            <h5>My Account</h5>
                            <ul class="nav align-items-center">
                                <li class="language">English <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list">
                                        <li><a href="#">English</a></li>
                                        <li><a href="#">French</a></li>
                                    </ul>
                                </li>
                                <li class="curreny-wrap">Currency <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list curreny-list">
                                        <li><a href="#">$ USD</a></li>
                                        <li><a href="#"> € EURO</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>

                        <!-- offcanvas widget area start -->
                        <div class="offcanvas-widget-area">
                            <div class="top-info-wrap text-left text-black">
                                <h5>My Account</h5>
                                <ul class="offcanvas-account-container">
                                    <li><a href="my-account.html">My account</a></li>
                                    <li><a href="cart.html">Cart</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- offcanvas widget area end -->
                    </div>
                </div>
            </aside>
            <!-- off-canvas menu end -->

        </header>
        <!--  Header Start -->

        <!-- breadcrumb-area start -->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- breadcrumb-list start -->
                        <ul class="breadcrumb-list">
                            <li class="breadcrumb-item"><a href="<?= BASE_URL . '/ ' ?>">Home</a></li>
                            <li class="breadcrumb-item active">Wishlist Page</li>
                        </ul>
                        <!-- breadcrumb-list end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb-area end -->


        <!-- main-content-wrap start -->
        <div class="main-content-wrap section-pt">
            <div class="container">
                <div class="frequently-questions-area">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-title text-center mb-30">
                                <h2>Frequently Questions</h2>
                            </div>
                            <div class="section-dec mb-40">
                                <h4>Below are frequently asked questions, you may find the answer for yourself</h4>

                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id erat sagittis, faucibus metus malesuada, eleifend turpis. Mauris semper augue id nisl aliquet, a porta lectus mattis. Nulla at tortor augue. In eget enim diam. Donec gravida tortor sem, ac fermentum nibh rutrum sit amet. Nulla convallis mauris vitae congue consequat. Donec interdum nunc purus, vitae vulputate arcu fringilla quis. Vivamus iaculis euismod dui.</p>

                            </div>
                            <div class="faq-style-wrap section-pb" id="faq-five">

                                <!-- Panel-default -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                            <a id="octagon" class="collapsed" role="button" data-bs-toggle="collapse" data-bs-target="#faq-collapse1" aria-expanded="true" aria-controls="faq-collapse1"> <span class="button-faq"></span>Mauris congue euismod purus at semper. Morbi et vulputate massa?</a>
                                        </h5>
                                    </div>
                                    <div id="faq-collapse1" class="collapse show" aria-expanded="true" role="tabpanel" data-parent="#faq-five">
                                        <div class="panel-body">
                                            <p>Nam liber tempor cum soluta nobis eleifend option.</p>
                                            <p>Congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.
                                            </p>
                                            <p> Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>
                                        </div>
                                    </div>
                                </div>
                                <!--// Panel-default -->

                                <!-- Panel-default -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                            <a class="collapsed" role="button" data-bs-toggle="collapse" data-bs-target="#faq-collapse2" aria-expanded="false" aria-controls="faq-collapse2"> <span class="button-faq"></span>Donec mattis finibus elit ut tristique?</a>
                                        </h5>
                                    </div>
                                    <div id="faq-collapse2" class="collapse" aria-expanded="false" role="tabpanel" data-parent="#faq-five">
                                        <div class="panel-body">
                                            <p>Nam liber tempor cum soluta nobis eleifend option.</p>
                                            <p>Congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.
                                            </p>
                                            <p> Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>
                                        </div>
                                    </div>
                                </div>
                                <!--// Panel-default -->

                                <!-- Panel-default -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                            <a class="collapsed" role="button" data-bs-toggle="collapse" data-bs-target="#faq-collapse3" aria-expanded="false" aria-controls="faq-collapse3"> <span class="button-faq"></span>Vestibulum a lorem placerat, porttitor urna vel?</a>
                                        </h5>
                                    </div>
                                    <div id="faq-collapse3" class="collapse" role="tabpanel" data-parent="#faq-five">
                                        <div class="panel-body">
                                            <p>Nam liber tempor cum soluta nobis eleifend option.</p>
                                            <p>Congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.
                                            </p>
                                            <p> Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>
                                        </div>
                                    </div>
                                </div>
                                <!--// Panel-default -->

                                <!-- Panel-default -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                            <a class="collapsed" role="button" data-bs-toggle="collapse" data-bs-target="#faq-collapse4" aria-expanded="false" aria-controls="faq-collapse4"> <span class="button-faq"></span>Nam pellentesque aliquam metus?</a>
                                        </h5>
                                    </div>
                                    <div id="faq-collapse4" class="collapse" role="tabpanel" data-parent="#faq-five">
                                        <div class="panel-body">
                                            <p>Nam liber tempor cum soluta nobis eleifend option.</p>
                                            <p>Congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.
                                            </p>
                                            <p> Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>
                                        </div>
                                    </div>
                                </div>
                                <!--// Panel-default -->

                                <!-- Panel-default -->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                            <a class="collapsed" role="button" data-bs-toggle="collapse" data-bs-target="#faq-collapse5" aria-expanded="false" aria-controls="faq-collapse5"> <span class="button-faq"></span>Aenean elit orci, efficitur quis nisl at?</a>
                                        </h5>
                                    </div>
                                    <div id="faq-collapse5" class="collapse" role="tabpanel" data-parent="#faq-five">
                                        <div class="panel-body">
                                            <p>Nam liber tempor cum soluta nobis eleifend option.</p>
                                            <p>Congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me.
                                            </p>
                                            <p> Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>
                                        </div>
                                    </div>
                                </div>
                                <!--// Panel-default -->
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- main-content-wrap end -->

        <!-- footer Start -->
        <footer>
            <div class="footer-top section-pb section-pt-60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">

                            <div class="widget-footer mt-40">
                                <h6 class="title-widget">Contact Info</h6>

                                <div class="footer-addres">
                                    <div class="widget-content mb--20">
                                        <p>Address: 123 Main Street, Anytown, <br> CA 12345 - USA.</p>
                                        <p>Phone: <a href="tel:">(012) 800 000 789</a></p>
                                        <p>Fax: <a href="tel:">(012) 800 888 789</a></p>
                                        <p>Email: <a href="tel:">demo@hashthemes.com</a></p>
                                    </div>
                                </div>

                                <ul class="social-icons">
                                    <li>
                                        <a class="facebook social-icon" href="#" title="Facebook" target="_blank"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a class="twitter social-icon" href="#" title="Twitter" target="_blank"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a class="instagram social-icon" href="#" title="Instagram" target="_blank"><i class="fa fa-instagram"></i></a>
                                    </li>
                                    <li>
                                        <a class="linkedin social-icon" href="#" title="Linkedin" target="_blank"><i class="fa fa-linkedin"></i></a>
                                    </li>
                                    <li>
                                        <a class="rss social-icon" href="#" title="Rss" target="_blank"><i class="fa fa-rss"></i></a>
                                    </li>
                                </ul>

                            </div>

                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-6">
                            <div class="widget-footer mt-40">
                                <h6 class="title-widget">Information</h6>
                                <ul class="footer-list">
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="about-us.html">About Us</a></li>
                                    <li><a href="contact.html">Quick Contact</a></li>
                                    <li><a href="blog.html">Blog Pages</a></li>
                                    <li><a href="#">Concord History</a></li>
                                    <li><a href="#">Client Feed</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-6">
                            <div class="widget-footer mt-40">
                                <h6 class="title-widget">Extras</h6>
                                <ul class="footer-list">

                                    <li><a href="#">Concord History</a></li>
                                    <li><a href="#">Client Feed</a></li>
                                    <li><a href="about-us.html">About Us</a></li>
                                    <li><a href="contact.html">Quick Contact</a></li>
                                    <li><a href="blog.html">Blog Pages</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="widget-footer mt-40">
                                <h6 class="title-widget">Get the app</h6>
                                <p>GreenLife App is now available on Google Play & App Store. Get it now.</p>
                                <ul class="footer-list">
                                    <li><img src="assets/images/brand/img-googleplay.jpg" alt=""></li>
                                    <li><img src="assets/images/brand/img-appstore.jpg" alt=""></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-bottom">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-6">
                            <div class="copy-left-text">
                                <p>Copyright &copy; <a href="#">Ruiz</a> 2019. All Right Reserved.</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="copy-right-image">
                                <img src="assets/images/icon/img-payment.png" alt="">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- footer End -->

    </div>

    <!-- JS
============================================ -->

    <!-- Modernizer JS -->
    <script src="resource/js/vendor/modernizr-3.6.0.min.js"></script>

    <!-- jquery -->
    <script src="resource/js/vendor/jquery-3.6.1.min.js"></script>
    <script src="resource/js/vendor/jquery-migrate-3.4.0.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="resource/js/vendor/bootstrap.min.js"></script>

    <!-- Plugins JS -->
    <script src="resource/js/plugins/slick.min.js"></script>

    <script src="resource/js/plugins/jquery.nice-select.min.js"></script>
    <script src="resource/js/plugins/countdown.min.js"></script>
    <script src="resource/js/plugins/image-zoom.min.js"></script>
    <script src="resource/js/plugins/fancybox.js"></script>
    <script src="resource/js/plugins/scrollup.min.js"></script>
    <script src="resource/js/plugins/jqueryui.min.js"></script>
    <script src="resource/js/plugins/ajax-contact.js"></script>

    <!-- Vendor & Plugins JS (Please remove the comment from below vendor.min.js & plugins.min.js for better website load performance and remove js files from avobe) -->
    <!--
<script src="resource/js/vendor/vendor.min.js"></script>
<script src="resource/js/plugins/plugins.min.js"></script>
-->

    <!-- Main JS -->
    <script src="resource/js/main.js"></script>

</body>


<!-- Mirrored from htmldemo.net/ruiz/ruiz/frequently-questions.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 24 Mar 2023 08:01:35 GMT -->

</html>