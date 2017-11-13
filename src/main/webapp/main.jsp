<!DOCTYPE html>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <!--Basic Page Needs-->
    <title>Shop Page</title>
    <meta charset="UTF-8" />
    <meta name="description" content="AuCreative theme tempalte" />
    <meta name="author" content="AuCreative" />
    <meta name="keywords" content="AuCreative theme template" />
    <!--Mobile Specific Metas-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="icon" type="image/png" href="resources/images/icons/home-boxed-logo.png" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker-bootstrap/daterangepicker.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/vendor/jqueryui/jquery-ui.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/vendor/animsition/dist/css/animsition.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="resources/css/animate.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/main.css" />
    <!--===============================================================================================-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
<div class="animsition">
    <header>
        <!-- Header desktop -->
        <div id="wrap_header">
            <!-- Logo -->
            <div class="logo col_header">
                <a href="./index.html"><img alt="logo-deli" src="resources/image/icons/logo.png" /></a>
            </div>
            <!-- Menu -->
            <div class="main_nav">
                <nav class="menu col_header">
                    <ul class="main_menu">
                        <li><a href="./index.html">Home</a>
                            <ul class="sub_menu">
                                <li><a href="./index.html">Homepage</a></li>
                                <li><a href="./home-boxed.html">Homepage Boxed</a></li>
                                <li><a href="./home-outgrid.html">Homepage Outgrid</a></li>
                                <li><a href="./home-showcase.html">Homepage Showcase</a></li>
                                <li><a href="./home-vertical-menu.html">Home Vertical Menu</a></li>
                                <li><a href="./home-onepage.html">Homepage Onepage</a></li>
                            </ul>
                        </li>
                        <li><a href="./menu-01.html">Menus</a>
                            <ul class="sub_menu">
                                <li><a href="./menu-01.html">Menu 01</a></li>
                                <li><a href="./menu-02.html">Menu 02</a></li>
                                <li><a href="./menu-03.html">Menu 03</a></li>
                                <li><a href="./product-detail.html">Product Detail</a></li>
                            </ul>
                        </li>
                        <li><a href="./reservation-01.html" class="have_sub_menu">Reservation</a>
                            <ul class="sub_menu">
                                <li><a href="./reservation-01.html">Reservation V1</a></li>
                                <li><a href="./reservation-02.html">Reservation V2</a></li>
                                <li><a href="./reservation-03.html">Reservation V3</a></li>
                            </ul>
                        </li>
                        <li><a href="./about-us.html">About us</a></li>
                        <li><a href="./shop-page.html">Features</a>
                            <ul class="sub_menu">
                                <li><a href="./shop-page.html">Shop Page</a></li>
                                <li><a href="./shopping-cart.html">Shopping Cart</a></li>
                                <li><a href="./check-out.html">Check Out</a></li>
                            </ul>
                        </li>
                        <li><a href="./blog-list-with-sidebar-01.html">Blog</a>
                            <ul class="sub_menu">
                                <li><a href="./blog-list-with-sidebar-01.html">Blog With Sidebar V1</a></li>
                                <li><a href="./blog-list-with-sidebar-02.html">Blog With Sidebar V2</a></li>
                                <li><a href="./blog-mansory.html">Blog Mansory</a></li>
                                <li><a href="./blog-detail.html">Blog Detail</a></li>
                            </ul>
                        </li>
                        <li><a href="./contact-us.html">Contact</a></li>
                    </ul>
                </nav>
            </div>

            <!-- Socials -->
            <div class="icon-header col_header">
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-tripadvisor" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
        </div>

        <!-- Header Mobile -->
        <div id="wrap_header_mobile">

            <!-- Logo moblie -->
            <div class="logo-mobile">
                <a href="./index.html"><img alt="logo-deli" src="resources/image/icons/logo-mobile.png" /></a>
            </div>

            <!-- Button show menu -->
            <div class="btn-show-menu">
                <button class="btn-show-menu-mobile hamburger hamburger--squeeze" type="button">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
                </button>
            </div>
        </div>

        <!-- Menu Mobile -->
        <div class="wrap-side-menu">
            <nav class="side-menu">
                <ul class="main-menu">
                    <li>
                        <a href="./index.html">Home</a>
                        <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
                        <ul class="sub-menu">
                            <li><a href="./index.html">Homepage</a></li>
                            <li><a href="./home-boxed.html">Homepage Boxed</a></li>
                            <li><a href="./home-outgrid.html">Homepage Outgrid</a></li>
                            <li><a href="./home-showcase.html">Homepage Showcase</a></li>
                            <li><a href="./home-vertical-menu.html">Home Vertical Menu</a></li>
                            <li><a href="./home-onepage.html">Homepage Onepage</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./menu-01.html">Menus</a>
                        <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
                        <ul class="sub-menu">
                            <li><a href="./menu-01.html">Menu 01</a></li>
                            <li><a href="./menu-02.html">Menu 02</a></li>
                            <li><a href="./menu-03.html">Menu 03</a></li>
                            <li><a href="./product-detail.html">Product Detail</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./reservation-01.html">Reservation</a>
                        <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
                        <ul class="sub-menu">
                            <li><a href="./reservation-01.html">Reservation V1</a></li>
                            <li><a href="./reservation-02.html">Reservation V2</a></li>
                            <li><a href="./reservation-03.html">Reservation V3</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./about-us.html">About us</a>
                    </li>
                    <li>
                        <a href="./shop-page.html">Features</a>
                        <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
                        <ul class="sub-menu">
                            <li><a href="./shop-page.html">Shop Page</a></li>
                            <li><a href="./shopping-cart.html">Shopping Cart</a></li>
                            <li><a href="./check-out.html">Check Out</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./blog-list-with-sidebar-01.html">Blog</a>
                        <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
                        <ul class="sub-menu">
                            <li><a href="./blog-list-with-sidebar-01.html">Blog With Sidebar V1</a></li>
                            <li><a href="./blog-list-with-sidebar-02.html">Blog With Sidebar V2</a></li>
                            <li><a href="./blog-mansory.html">Blog Mansory</a></li>
                            <li><a href="./blog-detail.html">Blog Detail</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./contact-us.html">Contact</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Title Shop page -->
    <section>
        <div class="bg-title-sub-page bg-menu-page-02 ">
            <div class="wrap-title-sub-page">
                <h2 class="title-l">Shop Page</h2>
                <h6 class="title-s">Home / Shop Page</h6>
            </div>
        </div>
    </section>

    <section class="content-shop-page">
        <div class="container">
            <div class="row">
                <!-- Shop list -->
                <div class="col-md-12 col-lg-9">
                    <div class="top-shop-list row">
                        <div class="result col-12 col-sm-6">
                            <span class="small-text">Showing 1–12 of 28 results</span>
                        </div>
                        <div class="col-12 col-sm-6">
                            <select class="chose-sort" name="chose-people">
                                <option />Sort by default
                                <option />Sort by price
                                <option />Sort by name
                            </select>
                        </div>
                    </div>

                    <div class="middle-shop-list row">
                        <div class="col-item col-sm-7 col-md-4">
                            <div class="item-shop-page">
                                <div class="img-item">
                                    <a href="./product-detail.html"><img src="resources/images/shop-page-img-item-01.jpg" alt="img-food" /></a>
                                </div>
                                <a href="./product-detail.html"><h4 class="name-item">Charred octopus</h4></a>
                                <p class="price-item">$ 20.00</p>
                                <button class="btn-with-bg add-to-cart">ADD TO CART</button>
                            </div>
                        </div>
                        <div class="col-item col-sm-7 col-md-4">
                            <div class="item-shop-page">
                                <div class="img-item">
                                    <a href="./product-detail.html"><img src="resources/images/shop-page-img-item-02.jpg" alt="img-food" /></a>
                                </div>
                                <a href="./product-detail.html"><h4 class="name-item">Potato gnocchi</h4></a>
                                <p class="price-item">$ 10.00</p>
                                <button class="btn-with-bg add-to-cart">ADD TO CART</button>
                            </div>
                        </div>
                        <div class="col-item col-sm-7 col-md-4">
                            <div class="item-shop-page">
                                <div class="img-item">
                                    <a href="./product-detail.html"><img src="resources/images/shop-page-img-item-03.jpg" alt="img-food" /></a>
                                </div>
                                <a href="./product-detail.html"><h4 class="name-item">Pork ribollita</h4></a>
                                <p class="price-item">$ 15.00</p>
                                <button class="btn-with-bg add-to-cart">ADD TO CART</button>
                            </div>
                        </div>
                    </div>

                    <div class="middle-shop-list row">
                        <div class="col-item col-sm-7 col-md-4">
                            <div class="item-shop-page">
                                <div class="img-item">
                                    <a href="./product-detail.html"><img src="resources/images/shop-page-img-item-04.jpg" alt="img-food" /></a>
                                </div>
                                <a href="./product-detail.html"><h4 class="name-item">Pine nut sbrisalona</h4></a>
                                <p class="price-item">$ 20.00</p>
                                <button class="btn-with-bg add-to-cart">ADD TO CART</button>
                            </div>
                        </div>
                        <div class="col-item col-sm-7 col-md-4">
                            <div class="item-shop-page">
                                <div class="img-item">
                                    <a href="./product-detail.html"><img src="resources/images/shop-page-img-item-05.jpg" alt="img-food" /></a>
                                </div>
                                <a href="./product-detail.html"><h4 class="name-item">Lobster caponata</h4></a>
                                <p class="price-item">$ 10.00</p>
                                <button class="btn-with-bg add-to-cart">ADD TO CART</button>
                            </div>
                        </div>
                        <div class="col-item col-sm-7 col-md-4">
                            <div class="item-shop-page">
                                <div class="img-item">
                                    <a href="./product-detail.html"><img src="resources/images/shop-page-img-item-02.jpg" alt="img-food" /></a>
                                </div>
                                <a href="./product-detail.html"><h4 class="name-item">Chocolate budino</h4></a>
                                <p class="price-item">$ 15.00</p>
                                <button class="btn-with-bg add-to-cart">ADD TO CART</button>
                            </div>
                        </div>
                    </div>

                    <div class="middle-shop-list row">
                        <div class="col-item col-sm-7 col-md-4">
                            <div class="item-shop-page">
                                <div class="img-item">
                                    <a href="./product-detail.html"><img src="resources/images/shop-page-img-item-07.jpg" alt="img-food" /></a>
                                </div>
                                <a href="./product-detail.html"><h4 class="name-item">Livorno style caccuchino</h4></a>
                                <p class="price-item">$ 20.00</p>
                                <button class="btn-with-bg add-to-cart">ADD TO CART</button>
                            </div>
                        </div>
                        <div class="col-item col-sm-7 col-md-4">
                            <div class="item-shop-page">
                                <div class="img-item">
                                    <a href="./product-detail.html"><img src="resources/images/shop-page-img-item-08.jpg" alt="img-food" /></a>
                                </div>
                                <a href="./product-detail.html"><h4 class="name-item">Baulletti</h4></a>
                                <p class="price-item">$ 10.00</p>
                                <button class="btn-with-bg add-to-cart">ADD TO CART</button>
                            </div>
                        </div>
                        <div class="col-item col-sm-7 col-md-4">
                            <div class="item-shop-page">
                                <div class="img-item">
                                    <a href="./product-detail.html"><img src="resources/images/shop-page-img-item-01.jpg" alt="img-food" /></a>
                                </div>
                                <a href="./product-detail.html"><h4 class="name-item">Livorno style caccuchino</h4></a>
                                <p class="price-item">$ 10.00</p>
                                <button class="btn-with-bg add-to-cart">ADD TO CART</button>
                            </div>
                        </div>
                    </div>

                    <div class="bottom-shop-list row">
                        <div class="col-item col-sm-7 col-md-12">
                            <span class="small-text"><i class="fa fa-angle-left" aria-hidden="true"></i></span>
                            <span class="small-text">1</span>
                            <span class="small-text">2</span>
                            <span class="small-text"><i class="fa fa-angle-right" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>

                <!-- Side bar -->
                <div class="col-md-12 col-lg-3">
                    <div class="wrap-side-bar row">
                        <div class="wrap-search-box col-12">
                            <div class="search-box">
                                <input class="search small-text" type="search" placeholder="Search..." />
                                <i class="btn-search fa fa-search" aria-hidden="true"></i>
                            </div>
                        </div>

                        <div class="categories col-12">
                            <h4 class="medium-text-2 ">Categories</h4>
                        </div>
                        <div class="categories-content col-12">
                            <ul>
                                <li class="small-text clearfix">
                                    <a href="#" class="small-text">Vegan Food</a>
                                    <span>(10)</span>
                                </li>
                                <li class="small-text clearfix">
                                    <a href="#" class="small-text">America Restaurants</a>
                                    <span>(25)</span>
                                </li>
                                <li class="small-text clearfix">
                                    <a href="#" class="small-text">Healthy Diet</a>
                                    <span>(15)</span>
                                </li>
                                <li class="small-text clearfix">
                                    <a href="#" class="small-text">Salad Recipes</a>
                                    <span>(10)</span>
                                </li>
                                <li class="small-text clearfix">
                                    <a href="#" class="small-text">Food Tips</a>
                                    <span>(25)</span>
                                </li>
                                <li class="small-text clearfix">
                                    <a href="#" class="small-text">Fresh Products</a>
                                    <span>(15)</span>
                                </li>
                                <li class="small-text clearfix">
                                    <a href="#" class="small-text">Vegan Food</a>
                                    <span>(10)</span>
                                </li>
                            </ul>
                        </div>

                        <div class="filter-price col-12">
                            <h4 class="medium-text-2 ">Filter By Price</h4>
                        </div>
                        <div class="wrap-filter-price-bar col-12">
                            <div class="filter-price-bar">
                                <div class="line-bar"></div>

                                <div id="containment-wrapper-2" class="wrap-point">
                                    <div id="draggable2" class="draggable ui-widget-content"></div>
                                </div>

                                <div id="containment-wrapper-3" class="wrap-point">
                                    <div id="draggable3" class="draggable ui-widget-content"></div>
                                </div>
                                <span>Price: $<span class="show-pos-begin">2</span> — $<span class="show-pos">50</span></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="content-footer row">
                <div class="column-footer col-lg-5 col-md-8 col-sm-7">
                    <h3>Contact information</h3>
                    <ul>
                        <li>ADDRESS: 100 Tenth Avenue, New York City, NY 1001</li>
                        <li>FOR BOOKING: (044) 359 0173</li>
                        <li id="follow-us">FOLLOW US ON:
                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-tripadvisor" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                        </li>
                    </ul>
                </div>

                <div class="column-footer col-lg-4 col-md-5 col-sm-7">
                    <h3>Restaurant hours</h3>
                    <ul id="restaurant-hours">
                        <li>
                            <span class="span-left">LUNCH:</span>
                        </li>
                        <li>
                            <span class="span-left">Monday - Friday</span>
                            <span class="span-right">11:30AM - 2:00PM</span>
                        </li>
                        <li>
                            <span class="span-left">DINNER:</span>
                        </li>
                        <li>
                            <span class="span-left">Monday - Friday</span>
                            <span class="span-right">5:30PM - 11:00PM</span>
                        </li>
                        <li>
                            <span class="span-left">Saturday - Sunday</span>
                            <span class="span-right">4:30PM - 10:00PM</span>
                        </li>
                    </ul>
                    <div class="line-divide first-line"></div>
                </div>

                <div class="column-footer col-lg-3 col-md-3 col-sm-7">
                    <h3>Useful links</h3>
                    <ul id="useful-links">
                        <li>
							<span class="span-left">
								<a href="./index.html">Home</a>
							</span>
                            <span class="span-right">
								<a href="./shop-page.html">Features</a>
							</span>
                        </li>
                        <li>
							<span class="span-left">
								<a href="./menu-01.html">Menus</a>
							</span>
                            <span class="span-right">
								<a href="./blog-list-with-sidebar-01.html">Blog</a>
							</span>
                        </li>
                        <li>
							<span class="span-left">
								<a href="./reservation-01.html">Reservation</a>
							</span>
                            <span class="span-right">
								<a href="./contact-us.html">Contact us</a>
							</span>
                        </li>
                        <li><a href="./about-us.html">About us</a></li>
                    </ul>
                    <div class="line-divide second-line"></div>
                </div>
            </div>
        </div>
        <div class="wrap-bottom-footer">
            <div class="container">
                <div class="bottom-footer row justify-content-between">
                    <div class="col-12 col-sm-7">© 2017 DesignGalaxy8. All rights reserved.</div>
                    <div class="col-12 col-sm-5"><span>Privacy policy</span><span>Terms of use</span></div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Back to top -->
    <div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
    </div>

    <!--===============================================================================================-->
    <script type="text/javascript" src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="resources/vendor/animsition/dist/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="resources/vendor/jqueryui/jquery-ui.min.js"></script>
    <script src="resources/js/draggable-jquery-ui.custom.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="resources/vendor/bootstrap/js/popper.min.js"></script>
    <script type="text/javascript" src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="resources/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="resources/vendor/daterangepicker-bootstrap/moment.min.js"></script>
    <script type="text/javascript" src="resources/vendor/daterangepicker-bootstrap/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="resources/vendor/bootstrap-notify/bootstrap-notify.js"></script>
    <script type="text/javascript" src="resources/js/bootstrap-notify-custom.js"></script>
    <!--===============================================================================================-->
    <script src="resources/js/main.js"></script>

    <script src="resources/more/js/vendor/jquery.min.js" type="text/javascript"></script>
    <script src="resources/more/js/vendor/underscore.min.js" type="text/javascript"></script>
    <script src="resources/more/js/modules/catalog.js" type="text/javascript"></script>
    <script src="resources/more/js/modules/cart.js" type="text/javascript"></script>
    <script src="resources/more/js/modules/main.js" type="text/javascript"></script>
</div>
</body>
</html>