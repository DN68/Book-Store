<%-- 
    Document   : cart
    Created on : Feb 26, 2022, 8:32:55 AM
    Author     : DN68
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>Amado - | Cart</title>

        <!-- Favicon  -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Core Style CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/core-style.css">
        <link rel="stylesheet" href="style.css">

    </head>
    <body>
        <!-- Search Wrapper Area Start -->
        <!--    <div class="search-wrapper section-padding-100">
                <div class="search-close">
                    <i class="fa fa-close" aria-hidden="true"></i>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="search-content">
                                <form action="search" method="post">
                                    <input type="text" name="search" id="search" placeholder="Type your keyword...">
                                    <button type="submit"><img src="../img/core-img/search.png" alt=""></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->
        <!-- Search Wrapper Area End -->
        <div class="alert alert-warning text-center"  role="alert">
            Order Successfull! Thank you!!</br>
             <div class="text-center">
            <a class="btb btn-outline-primary" href="ProductControll">Continue Shopping</a>
        </div>
        </div>
       

        <!--         ##### Main Content Wrapper Start ##### 
                <div class="main-content-wrapper d-flex clearfix">
        
                     Mobile Nav (max width 767px)
                    <div class="mobile-nav">
                         Navbar Brand 
                        <div class="amado-navbar-brand">
                            <a ><img src="../img/core-img/logo.png" alt=""></a>
                        </div>
                        
                         Navbar Toggler 
                        <div class="amado-navbar-toggler">
                            <span></span><span></span><span></span>
                        </div>
                    </div>
        
                     Header Area Start 
                    <header class="header-area clearfix">
                         Close Icon 
                        <div class="nav-close">
                            <i class="fa fa-close" aria-hidden="true"></i>
                        </div>
                         Logo 
                        <div class="logo">
                            <a ><img src="../img/core-img/logo.png" alt=""></a>
                        </div>
                         Amado Nav 
                        <nav class="amado-nav">
                            <ul>
                                <li><a href="ProductControll">Shop</a></li>
        <c:if test="${sessionScope.acc.isAdmin == 1}">
        <li><a href="manager">Manager Product</a></li>
        <li><a href="manageraccount">Manager Account</a></li>
        </c:if>
    <li class="active"><a href="cart.jsp">Cart<span>(${sessionScope.carts.size()})</span></a></li>
        <c:if test="${sessionScope.acc != null}">
        <li><a href="loadInformation?inid=${acc.customerid}">Hello ${sessionScope.acc.username}</a></li>

        <li><a href="logout">Logout</a></li>
        </c:if>
        <c:if test="${sessionScope.acc == null}">
        <li><a href="login">Login</a></li>
        <li><a href="register">Register</a></li>
        </c:if>
</ul>
</nav>

Cart Menu 
<div class="cart-fav-search mb-100">
<a href="#" class="fav-nav"><img src="../img/core-img/favorites.png" alt=""> Favourite</a>
<a href="#" class="search-nav"><img src="../img/core-img/search.png" alt=""> Search</a>
</div>
Social Button 
<div class="social-info d-flex justify-content-between">
<a ><i class="fa fa-pinterest" aria-hidden="true"></i></a>
<a ><i class="fa fa-instagram" aria-hidden="true"></i></a>
<a ><i class="fa fa-facebook" aria-hidden="true"></i></a>
<a ><i class="fa fa-twitter" aria-hidden="true"></i></a>
</div>

</header>

        
Header Area End 

<div class="cart-table-area section-padding-100">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 col-lg-8">
                <div class="cart-title mt-50">
                    <h2>Shopping Cart</h2>
                </div>

                <div class="cart-table clearfix">
                    <table class="table table-responsive">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Quantity</th>
                            </tr>
                        </thead>
                        
                    </table>
                </div>
            </div>
            <div class="col-12 col-lg-4">
                <div class="cart-summary">
                    <h5>Cart Total</h5>
                    <ul class="summary-table">
                        <li><span>subtotal:</span> <span></span></li>
                        <li><span>delivery:</span> <span></span></li>
                        <li><span>total:</span> <span></span></li>
                    </ul>
                    <div class="cart-btn mt-100">
                        <a href="cart.jsp" class="btn amado-btn w-100">Checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
##### Main Content Wrapper End ##### 


##### Newsletter Area Start ##### 
<section class="newsletter-area section-padding-100-0">
<div class="container">
<div class="row align-items-center">
 Newsletter Text 
<div class="col-12 col-lg-6 col-xl-7">
    <div class="newsletter-text mb-100">
        <h2>Subscribe for a <span>25% Discount</span></h2>
        <p>Nulla ac convallis lorem, eget euismod nisl. Donec in libero sit amet mi vulputate consectetur. Donec auctor interdum purus, ac finibus massa bibendum nec.</p>
    </div>
</div>
 Newsletter Form 
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

##### Newsletter Area End ##### 


##### Footer Area Start ##### 
<footer class="footer_area clearfix">
<div class="container">
<div class="row align-items-center">
 Single Widget Area 
<div class="col-12 col-lg-4">
    <div class="single_widget_area">
         Logo 
        <div class="footer-logo mr-50">
            <a href="index.jsp"><img src="../img/core-img/logo2.png" alt=""></a>
        </div>
         Copywrite Text 
        <p class="copywrite"> Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. 
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
             Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. & Re-distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a>
        </p>
    </div>
</div>
 Single Widget Area 
<div class="col-12 col-lg-8">
    <div class="single_widget_area">
         Footer Menu 
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
</footer>-->
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
