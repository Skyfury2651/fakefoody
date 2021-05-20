<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.Dish" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/18/2021
  Time: 8:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Page</title>
    <link href="http://7oroof.com/demos/babette/assets/images/favicon/favicon.png" rel="icon">
    <link rel="stylesheet" href="http://7oroof.com/demos/babette/assets/css/style.css" type="text/css">
    <link rel="stylesheet" href="http://7oroof.com/demos/babette/assets/css/libraries.css" type="text/css">
    <link rel="stylesheet" href="http://7oroof.com/demos/babette/assets/css/style.css" type="text/css">
</head>
<body style="background-image: url('http://7oroof.com/demos/babette/assets/images/backgrounds/8.jpg')">
<header id="header" class="header header-transparent header-layout1">
    <nav class="navbar navbar-expand-lg sticky-navbar">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <img src="http://7oroof.com/demos/babette/assets/images/logo/logo-light.png" class="logo-light" alt="logo">
                <img src="http://7oroof.com/demos/babette/assets/images/logo/logo-dark.png" class="logo-dark" alt="logo">
            </a>
            <button class="navbar-toggler" type="button">
                <span class="menu-lines"><span></span></span>
            </button>
            <div class="collapse navbar-collapse" id="mainNavigation">
                <ul class="navbar-nav ml-auto">
                    <li class="nav__item with-dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle nav__item-link active">Home</a>
                        <ul class="dropdown-menu">
                            <li class="nav__item"><a href="index.html" class="nav__item-link">Home Main</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="home-gourmet.html" class="nav__item-link">Home Gourmet</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="home-classic.html" class="nav__item-link">Home Classic</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="home-cafe.html" class="nav__item-link">Home Cafe</a></li>
                            <!-- /.nav-item -->
                        </ul><!-- /.dropdown-menu -->
                    </li><!-- /.nav-item -->
                    <li class="nav__item with-dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle nav__item-link">About</a>
                        <ul class="dropdown-menu">
                            <li class="nav__item"><a href="our-story.html" class="nav__item-link">About Us</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="our-chefs.html" class="nav__item-link">Our chefs</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="our-guestbook.html" class="nav__item-link">Our Guestbook</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="contacts.html" class="nav__item-link">Contact Us</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="events.html" class="nav__item-link">Events</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="event-single.html" class="nav__item-link">Event Single</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="faqs.html" class="nav__item-link">FAQs</a></li> <!-- /.nav-item -->
                        </ul><!-- /.dropdown-menu -->
                    </li><!-- /.nav-item -->
                    <li class="nav__item with-dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle nav__item-link">Menu</a>
                        <ul class="dropdown-menu">
                            <li class="nav__item"><a href="menu-classic.html" class="nav__item-link">Menu Classic</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="menu-mixed.html" class="nav__item-link">Menu Mixed</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="menu-board.html" class="nav__item-link">Menu Board</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="menu-gallery.html" class="nav__item-link">Menu Gallery</a></li>
                            <!-- /.nav-item -->
                        </ul><!-- /.dropdown-menu -->
                    </li><!-- /.nav-item -->
                    <li class="nav__item with-dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle nav__item-link">Gallery</a>
                        <ul class="dropdown-menu">
                            <li class="nav__item"><a href="gallery-grid.html" class="nav__item-link">Gallery grid</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="gallery-fullwidth.html" class="nav__item-link">Gallery Fullwidth</a>
                            </li><!-- /.nav-item -->
                        </ul><!-- /.dropdown-menu -->
                    </li><!-- /.nav-item -->
                    <li class="nav__item with-dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle nav__item-link">Blog</a>
                        <ul class="dropdown-menu">
                            <li class="nav__item"><a href="blog-carousel.html" class="nav__item-link">blog carousel</a></li>
                            <li class="nav__item dropdown-submenu">
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle nav__item-link">Blog Grid</a>
                                <ul class="dropdown-menu">
                                    <li class="nav__item">
                                        <a href="blog-grid-sidebar.html" class="nav__item-link">Grid Sidebar</a>
                                    </li><!-- /.nav-item -->
                                    <li class="nav__item">
                                        <a href="blog-grid.html" class="nav__item-link">No Sidebar</a>
                                    </li><!-- /.nav-item -->
                                </ul><!-- /.dropdown-menu -->
                            </li><!-- /.nav-item -->
                            <li class="nav__item"><a href="blog-standard.html" class="nav__item-link">blog standard</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="blog-single-post.html" class="nav__item-link">single post</a></li>
                            <!-- /.nav-item -->
                        </ul><!-- /.dropdown-menu -->
                    </li><!-- /.nav-item -->
                    <li class="nav__item with-dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle nav__item-link">Shop</a>
                        <ul class="dropdown-menu">
                            <li class="nav__item"><a href="shop.html" class="nav__item-link">our Shop</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="shop-sidebar.html" class="nav__item-link">Shop with Sidebar</a></li>
                            <!-- /.nav-item -->
                            <li class="nav__item"><a href="shop-single-product.html" class="nav__item-link">Single Product</a>
                            </li><!-- /.nav-item -->
                            <li class="nav__item"><a href="shopping-cart.html" class="nav__item-link">cart</a></li>
                            <!-- /.nav-item -->
                        </ul><!-- /.dropdown-menu -->
                    </li><!-- /.nav-item -->
                    <!-- /.nav-item -->
                </ul><!-- /.navbar-nav -->
            </div><!-- /.navbar-collapse -->
            <div class="navbar-actions-wrap">
                <div class="navbar-actions d-flex align-items-center">
                    <a href="#" class="navbar__action-btn search-popup-trigger"><i class="fa fa-search"></i></a>
                    <a href="reservation.html" class="navbar__action-btn navbar__action-btn-reserve btn btn__primary">Reservation</a>
                    <ul class="social__icons">
                        <li><a href="#"><i class="fa fa-tripadvisor"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    </ul><!-- /.social__icons -->
                </div><!-- /.navbar-actions -->
            </div><!-- /.navbar-actions-wrap -->
        </div><!-- /.container -->
    </nav><!-- /.navabr -->
</header>
<main id="content" class="content" role="main">
    <!-- Page content -->
    <div class="row">
        <div class="col-lg-12">
            <section class="widget">
                <header>
                    <h5>
                        Table <span class="fw-semi-bold">Styles</span>
                    </h5>
                    <div class="widget-controls mt-2">
                        <a href="#"><i class="la la-cog"></i></a>
                        <a data-widgster="close" href="#"><i class="glyphicon glyphicon-remove"></i></a>
                    </div>
                </header>
                <div class="widget-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <th class="d-none d-md-table-cell">#</th>
                            <th>Picture</th>
                            <th>Description</th>
                            <th class="d-none d-md-table-cell">Info</th>
                            <th class="d-none d-md-table-cell">Date</th>
                            <th class="d-none d-md-table-cell">Size</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="d-none d-md-table-cell">1</td>
                            <td>
                                <img class="img-rounded" src="../demo/img/pictures/1.jpg" alt="" height="50">
                            </td>
                            <td>
                                Palo Alto
                            </td>
                            <td class="d-none d-md-table-cell">
                                <p class="no-margin">
                                    <small>
                                        <span class="fw-semi-bold">Type:</span>
                                        <span class="text-semi-muted">&nbsp; JPEG</span>
                                    </small>
                                </p>
                                <p>
                                    <small>
                                        <span class="fw-semi-bold">Dimensions:</span>
                                        <span class="text-semi-muted">&nbsp; 200x150</span>
                                    </small>
                                </p>
                            </td>
                            <td class="d-none d-md-table-cell text-semi-muted">
                                September 14, 2012
                            </td>
                            <td class="d-none d-md-table-cell text-semi-muted">
                                45.6 KB
                            </td>
                            <td class="width-150">
                                <div class="progress progress-sm">
                                    <div class="progress-bar progress-sm bg-success js-progress-animate" style="width: 29%;" data-width="29%"></div>
                                </div>
                            </td>
                        </tr>
                        </tbody>

                    </table>
                    <div class="clearfix">
                        <div class="float-right">
                            <button class="btn btn-default btn-sm mr-3">
                                Send to ...
                            </button>
                            <div class="btn-group">
                                <button class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown">
                                    &nbsp; Clear &nbsp;
                                </button>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a class="dropdown-item" href="#">Clear</a></li>
                                    <li><a class="dropdown-item" href="#">Move ...</a></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                    <li class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Separated link</a></li>
                                </ul>
                            </div>
                        </div>
                        <p>Basic table with styled content</p>
                    </div>
                </div>
            </section>
        </div>
    </div>
</main>

<script src="http://7oroof.com/demos/babette/assets/js/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="http://7oroof.com/demos/babette/assets/js/plugins.js"></script>
<script src="http://7oroof.com/demos/babette/assets/js/main.js" type="text/javascript"></script>
</body>
</html>
