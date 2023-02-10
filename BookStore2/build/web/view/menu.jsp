

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <li><a href="view/cart.jsp">Cart</a></li>
                        <li><a href="view/checkout.jsp">Checkout</a></li>
                        <li><a href="login">Login</a></li>
                        <li><a href="register">Register</a></li>
                        <li><a href="#">Logout</a></li>
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
               
