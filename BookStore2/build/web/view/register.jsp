<%-- 
    Document   : register
    Created on : Mar 9, 2022, 4:02:29 PM
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
    <title>Amado - BookStore | Register</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico" />

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/core-style.css" />
    

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
                <form action="search" method="post">
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
            <a><img src="img/core-img/logo.png" alt="" /></a>
          </div>
          <!-- Amado Nav -->
          <nav class="amado-nav">
            <ul>
              <li><a href="ProductControll">Shop</a></li>
              
              <li><a href="carts">Cart<span>(${sessionScope.carts.size()})</span></a></li>
              <li><a href="login">Login</a></li>
              <li class="active"><a href="register">Register</a></li>
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
                                <h2>Register</h2>
                            </div>

                            <form action="register" method="post">
                                <div class="row">
                                    <div class="col-12 mb-3">
                                        <input name="fullname" type="text" class="form-control" id="first_name" value="" placeholder="Full Name" required>
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input name="email" type="email" class="form-control" id="email" placeholder="Email" value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input name="address" type="text" class="form-control mb-3" id="street_address" placeholder="Address" value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input name="phonenumber" type="number" class="form-control" id="phone_number"  placeholder="Phone Number" value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input name="user" type="text" class="form-control" id="text" value="" placeholder="Username" required>
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input name="pass" type="password" class="form-control" id="text" value="" placeholder="Password" required>
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input name="re_pass" type="password" class="form-control" id="text" value="" placeholder="Repeat Password" required>
                                    </div>
                                    
                                </div>
                                   <div class="col-12">                      
                                        <div class="cart-btn mt-100">
                                            <button class="btn amado-btn w-100">Register</button>
                        </div>  
                                    
                                    
                                    
                                    
                                    

                                   
                                </div>
                            </form>
                            
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
<!--/form-->
    </body>
</html>
