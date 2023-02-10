<%-- 
    Document   : login
    Created on : Feb 26, 2022, 8:35:01 AM
    Author     : DN68
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="description" content="" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title  -->
        <title>Amado - BookStore | Login</title>

        <!-- Favicon  -->
        <link rel="icon" href="img/core-img/favicon.ico" />

        <!-- Core Style CSS -->
        <link rel="stylesheet" href="../css/core-style.css" />


        <link rel="stylesheet" href="style.css" />
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
                            <form action="#" method="get">
                                <input
                                    type="text"
                                    name="search"
                                    id="search"
                                    placeholder="Type your keyword..."
                                    />
                                <button type="submit">
                                    <img src="img/core-img/search.png" alt="" />
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Search Wrapper Area End -->

        <!-- ##### Main Content Wrapper Start ##### -->
        <div class="main-content-wrapper d-flex clearfix">
            <!-- Mobile Nav (max width 767px)-->
            <div class="mobile-nav">
                <!-- Navbar Brand -->
                <div class="amado-navbar-brand">
                    <a ><img src="img/core-img/logo.png" alt="" /></a>
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
                    <a ><img src="img/core-img/logo.png" alt="" /></a>
                </div>
                <!-- Amado Nav -->
                <nav class="amado-nav">
                    <ul>
                        <li><a href="ProductControll">Shop</a></li>

                        <li><a href="view/cart.jsp">Cart</a></li>
                         <c:if test="${sessionScope.acc == null}">
                            <li class="active"><a href="login">Login</a></li>
                            <li><a href="register">Register</a></li>
                            </c:if>
                        <c:if test="${sessionScope.acc != null}">
                            <li><a href="#">Hello ${sessionScope.acc.username}</a></li>
                            <li><a href="#">Logout</a></li>
                            </c:if>
                           

                    </ul>
                </nav>

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
                                    <h2>Foget password</h2>
                                </div>
                                
                                <form action="forget-password" method="post">
                                    <div class="row">                        
                                        <div class="col-12 mb-3">
                                            <input name="email" type="text" class="form-control" id="text" placeholder="Email" style="border: 1px black solid; color: black;" value="">
                                        </div>
                                       
                                        
                                        <div class="col-12">                      
                                            <div class="cart-btn mt-100">
                                                <button type="submit" class="btn amado-btn w-100">Next</button>
                                            </div>
                                            <br>
                                            
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!--/form-->
    </body>
</html>
