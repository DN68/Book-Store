<%-- 
    Document   : checkout
    Created on : Feb 26, 2022, 8:33:51 AM
    Author     : DN68
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title  -->
        <title>Amado | Information</title>

        <!-- Favicon  -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Core Style CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/core-style.css">
        <link rel="stylesheet" href="style.css">

    </head>
    <body>
        <!-- Search Wrapper Area Start -->
        <div class="search-wrapper section-padding-100">
            <div class="search-close">
                <i class="fa fa-close" aria-hidden="true"></i>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="search-content">
                            <!--              <form action="search" method="post">
                                            <input
                                              type="text"
                                              name="search"
                                              id="search"
                                              placeholder="Type your keyword..."
                                            />
                                            <button type="submit">
                                              <img src="img/core-img/search.png" alt="" />
                                            </button>
                                          </form>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--        <div class="search123" style="display: block; margin-right: 0px !important;margin-left: auto " >
                                    <input value="${txtS}" name="search" type="text" class="button-search" placeholder="Tìm kiếm tên sản phẩm" style="border-bottom-left-radius: 5px;border-top-left-radius: 5px; color: black;">
                                    <button type="submit"  class =" btn btn-outline-success my-2 my-sm-0" style=" height: auto; width: 100px; background-color: orange; color:white" > Tìm kiếm </button>
                                </div>-->
        <form action="search" method="post">
            <div class="input-group rounded">
                <input value="${txtS}" name="search" type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
                <button type="submit"  class =" btn btn-outline-success my-2 my-sm-0" style=" height: auto; width: 100px; background-color: orange; color:white" > Tìm kiếm </button>
                <!--  <span class="input-group-text border-0" id="search-addon">
                    <i class="fas fa-search"></i>
                  </span>-->
            </div>
        </form>
        <!-- Search Wrapper Area End -->

        <!-- ##### Main Content Wrapper Start ##### -->
        <div class="main-content-wrapper d-flex clearfix">

            <!-- Mobile Nav (max width 767px)-->
            <div class="mobile-nav">
                <!-- Navbar Brand -->
                <div class="amado-navbar-brand">
                    <a ><img src="img/core-img/logo.png" alt=""></a>
                </div>
                <!-- Navbar Toggler -->
                <div class="amado-navbar-toggler">
                    <span></span><span></span><span></span>
                </div>
            </div>

            <!-- Header Area Start -->
            <header class="header-area clearfix">
                <!-- Close Icon -->
                <div class="nav-close">
                    <i class="fa fa-close" aria-hidden="true"></i>
                </div>
                <!-- Logo -->
                <div class="logo">
                    <a ><img src="img/core-img/logo.png" alt=""></a>
                </div>
                <!-- Amado Nav -->
                <nav class="amado-nav">
                    <ul>
                        <li ><a href="ProductControll">Shop</a></li>
<!--                            <c:if test="${sessionScope.acc.isAdmin == 2}">
                            <li><a href="manager">Manager Product</a></li>
                            <li><a href="manageraccount">Manager Account</a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc.isAdmin == 1}">
                            <li><a href="manager">Manager Product</a></li>

                        </c:if>-->
                        <c:if test="${sessionScope.acc != null}">
                            <li><a href="carts">Cart<span> (${sessionScope.carts.size()})</span></a></li>
                            <li><a href="Information?inid=${acc.customerid}">Hello ${sessionScope.acc.username}</a></li>
                            <li><a href="logout">Logout</a></li>
                        </c:if>
<!--                        <c:if test="${sessionScope.acc == null}">
                            <li><a href="login">Login</a></li>
                            <li><a href="register">Register</a></li>
                            <li><a href="carts">Cart<span>(0)</span></a></li>
                        </c:if>-->



                    </ul>
                </nav>

                <!-- Cart Menu -->
                <!-- Cart Menu -->
                <div class="cart-fav-search mb-100">

                    <a href="#" class="fav-nav"
                       ><img src="img/core-img/favorites.png" alt="" /> Favourite</a
                    >

                </div>
                <!-- Social Button -->
                <div class="social-info d-flex justify-content-between">
                    <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                </div>
            </header>
            <!-- Header Area End -->

            <div class="cart-table-area section-padding-100">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 col-lg-8">
                            <div class="checkout_details_area mt-50 clearfix">

                                <div class="cart-title">
                                    <h2>Information</h2>
                                </div>
                                <p style="color: green" >${mess}</p>
                                <form action="information" method="post">
                                    <div class="row">
                                        <div class="col-12 mb-3">
                                            ID: <input name="inid" type="text" class="form-control" id="first_name" value="${infor.customerid}" placeholder="ID" required readonly>
                                        </div>
                                        <div class="col-12 mb-3">
                                            Full Name: <input name="fullname" type="text" class="form-control" id="first_name" value="${infor.fullname}" placeholder="Full Name" required>
                                        </div>


                                        <div class="col-12 mb-3">
                                            Email: <input name="email" type="email" class="form-control" id="email" placeholder="Email" value="${infor.email}">
                                        </div>
                                        <div class="col-12 mb-3">
                                            Address: <input name="address" type="text" class="form-control mb-3" id="street_address" placeholder="Address" value="${infor.address}">
                                        </div>
                                        <div class="col-12 mb-3">
                                            Phone Number:  <input name="phonenumber" type="text" class="form-control" id="phone_number" placeholder="Phone Number" value="${infor.phone}">
                                        </div>
                                        <div class="col-12 mb-3">
                                            Username: <input name="username" type="text" class="form-control" id="usename" placeholder="Username" value="${infor.username}" readonly>
                                        </div>
                                        
                                        <div class="col-12 mb-3">
                                            Password: <input name="pass" type="password" class="form-control" id="password" placeholder="Password" value="${infor.password}" readonly>
                                        </div>
                                    </div>
                                        <a href="change?cid=${acc.customerid}"><h5 style="color: green" >Change password</h5></a>
                                    <div class="modal-footer">
                                        <input type="submit" class="btn btn-success" value="Edit">

                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- ##### Main Content Wrapper End ##### -->

        <!-- ##### Newsletter Area Start ##### -->
        <section class="newsletter-area section-padding-100-0">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Newsletter Text -->
                    <div class="col-12 col-lg-6 col-xl-7">
                        <div class="newsletter-text mb-100">
                            <h2>Subscribe for a <span>25% Discount</span></h2>
                            <p>Nulla ac convallis lorem, eget euismod nisl. Donec in libero sit amet mi vulputate consectetur. Donec auctor interdum purus, ac finibus massa bibendum nec.</p>
                        </div>
                    </div>
                    <!-- Newsletter Form -->
                    <div class="col-12 col-lg-6 col-xl-5">
                        <div class="newsletter-form mb-100">
                            <form action="#" method="post">
                                <input type="email" name="email" class="nl-email" placeholder="Your E-mail">
                                <input type="submit" value="Subscribe">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ##### Newsletter Area End ##### -->

        <!-- ##### Footer Area Start ##### -->
        <footer class="footer_area clearfix">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Single Widget Area -->
                    <div class="col-12 col-lg-4">
                        <div class="single_widget_area">
                            <!-- Logo -->
                            <div class="footer-logo mr-50">
                                <a href="index.jsp"><img src="../img/core-img/logo2.png" alt=""></a>
                            </div>
                            <!-- Copywrite Text -->
                            <p class="copywrite"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> & Re-distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                    </div>
                    <!-- Single Widget Area -->
                    <div class="col-12 col-lg-8">
                        <div class="single_widget_area">
                            <!-- Footer Menu -->
                            <div class="footer_menu">
                                <nav class="navbar navbar-expand-lg justify-content-end">
                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#footerNavContent" aria-controls="footerNavContent" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                                    <div class="collapse navbar-collapse" id="footerNavContent">
                                        <ul class="navbar-nav ml-auto">
                                            <li class="nav-item active">
                                                <a class="nav-link" href="index.jsp">Home</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="shop.jsp">Shop</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="product-details.jsp">Product</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="cart.jsp">Cart</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="checkout.jsp">Checkout</a>
                                            </li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- ##### Footer Area End ##### -->

        <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
        <script src="../js/jquery/jquery-2.2.4.min.js"></script>
        <!-- Popper js -->
        <script src="../js/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="../js/bootstrap.min.js"></script>
        <!-- Plugins js -->
        <script src="../js/plugins.js"></script>
        <!-- Active js -->
        <script src="../js/active.js"></script>
    </body>
</html>
