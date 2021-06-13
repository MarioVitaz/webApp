<%@include file="components/head.jsp" %>

<div class="container-fluid pl-0 pr-0 bg-img clearfix parallax-window2" data-parallax="scroll" data-image-src="images/banner2.jpg">
    <%
        if (session.getAttribute("sessionType") == "admin") {
            out.print("Admin session");
    %>

    <%@include file="Menu/menuAdmin.jsp"%>
    <%@include file="admin.jsp"%>
    <%
    } else if (session.getAttribute("sessionType") == "user") {
        out.print("User session");
    %>
    <%@include file="Menu/menuUser.jsp" %>
    <%

    } else {
        out.print("No session");
    %>
    <%@include file="Menu/menu.jsp" %>
    <%
        }
    %>
    <div class="container">
        <div class="fh5co-banner-text-box">
            <div class="quote-box pl-5 pr-5 wow bounceInRight">
                <h2> FREE TEMPLATE <br><span>BY FREEHTML5.CO</span> </h2>
            </div>
            <a href="#" class="btn text-uppercase btn-outline-danger btn-lg mr-3 mb-3 wow bounceInUp"> What's new</a> <a href="#" class="btn text-uppercase btn-outline-danger btn-lg mb-3 wow bounceInDown"> Courses</a> </div>
    </div>
</div>
<div class="container-fluid fh5co-network">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h4 class="wow bounceInUp">FOR NETWORK</h4>
                <h2 class="wow bounceInRight">MEMBERS</h2>
                <hr />
                <h5 class="wow bounceInLeft">NETWORK SUMMER 2017</h5>
                <p class="wow bounceInDown">The lowdown on Blood Flow Restriction training • FREE CEC/CPD • ​Let's compare ​Raw Vs Cooked • Building Ab, Core &amp; Pelvic strength • Get​ clients short-term wins from long-term goals • So you want to operate multiple clubs? + LOADS MORE</p>
            </div>
            <div class="col-md-6">
                <figure class="wow bounceInDown"> <img src="images/about-img.jpg" alt="gym" class="img-fluid" /> </figure>
            </div>
        </div>
    </div>
</div>
<div id="about-us" class="container-fluid fh5co-about-us pl-0 pr-0 parallax-window" data-parallax="scroll" data-image-src="images/about-us-bg.jpg">
    <div class="container">
        <div class="col-sm-6 offset-sm-6">
            <h2 class="wow bounceInLeft" data-wow-delay=".25s">ABOUT US</h2>
            <hr/>
            <p class="wow bounceInRight" data-wow-delay=".25s">Trainers, athletes and serious clients alike are looking for the toughest, most brutally productive training techniques to spice up their workouts and provide a truly unique challenge for their body and mind. Think: one-arm push-ups, pistols, pull-ups, handstands, hanging levers and the like! If you want toeither for </p>
            <a class="btn btn-lg btn-outline-danger d-inline-block text-center mx-auto wow bounceInDown">Learn More</a> </div>
    </div>
</div>
<div class="container-fluid fh5co-content-box">
    <div class="container">
        <div class="row">
            <div class="col-md-5 pr-0"><img src="images/rode-gym.jpg" alt="gym" class="img-fluid wow bounceInLeft" /> </div>
            <div class="col-md-7 pl-0">
                <div class="wow bounceInRight" data-wow-delay=".25s">
                    <div class="card-img-overlay">
                        <p>Great weekend, met lots of cool people and took away quite a bit. Thank you for the experience, and to you and your professional team for
                            making things seem </p>
                    </div>
                    <img src="images/gym-girls.jpg" alt="girls in gym" class="img-fluid" /> </div>
            </div>
        </div>
        <div class="row trainers pl-0 pr-0">
            <div class="col-12 bg-50">
                <div class="quote-box2 wow bounceInDown" data-wow-delay=".25s">
                    <h2> TRAINERS </h2>
                </div>
            </div>
            <div class="col-md-6 pr-5 pl-5">
                <div class="card text-center wow bounceInLeft" data-wow-delay=".25s"> <img class="card-img-top rounded-circle img-fluid" src="image/mario.jpg" alt="Card image">
                    <div class="card-body mb-5">
                        <h4 class="card-title">Mario</h4>
                        <p class="card-text">Trainers, athletes and serious clients alike are looking for the toughest, most brutally productive training techniques to spice up their workouts and provide a truly unique challenge</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 pl-5 pr-5">
                <div class="card text-center wow bounceInRight" data-wow-delay=".25s"> <img class="card-img-top rounded-circle img-fluid" src="image/Ado.jpg" alt="Card image">
                    <div class="card-body mb-5">
                        <h4 class="card-title">Zlatovlaska AKA Adrian</h4>
                        <p class="card-text">Trainers, athletes and serious clients alike are looking for the toughest, most brutally productive training techniques to spice up their workouts and provide a truly unique challenge</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row gallery">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body mb-4 wow bounceInLeft" data-wow-delay=".25s">
                        <h4 class="card-title">FILEX</h4>
                        <p class="card-text">I just wanted to sincerely thank you for the opportunity to represent Precision Nutrition and the US at such an amazing event. </p>
                    </div>
                    <img class="card-img-top img-fluid wow bounceInRight" data-wow-delay=".25s" src="images/g1.jpg" alt="Card image"> </div>
            </div>
            <div class="col-md-4">
                <div class="card"> <img class="card-img-top img-fluid wow bounceInUp" data-wow-delay=".25s" src="images/g2.jpg" alt="Card image">
                    <div class="card-body mt-4 wow bounceInDown" data-wow-delay=".25s">
                        <h4 class="card-title">IGNITING</h4>
                        <p class="card-text">I just wanted to sincerely thank you for the opportunity to represent Precision Nutrition and the US at such an amazing event. </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body mb-4 wow bounceInRight" data-wow-delay=".25s">
                        <h4 class="card-title">PASSION</h4>
                        <p class="card-text">I just wanted to sincerely thank you for the opportunity to represent Precision Nutrition and the US at such an amazing event. </p>
                    </div>
                    <img class="card-img-top img-fluid wow bounceInLeft" data-wow-delay=".25s" src="images/g3.jpg" alt="Card image"> </div>
            </div>
        </div>
    </div>
</div>
<footer class="container-fluid">
    <div class="container">
        <div class="row">
            <div class="col-md-3 footer1 d-flex wow bounceInLeft" data-wow-delay=".25s">
                <div class="d-flex flex-wrap align-content-center"> <a href="#"><img src="images/logo.png" alt="logo" /></a>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo
                        dolor. Ae</p>
                    <p>&copy; 2018 Foxpro. All rights reserved.<br> Design by <a href="https://freehtml5.co" target="_blank">FreeHTML5</a>.</p>
                </div>
            </div>
            <div class="col-md-6 footer2 wow bounceInUp" data-wow-delay=".25s" id="contact">
                <div class="form-box">
                    <h4>CONTACT US</h4>
                    <table class="table table-responsive d-table">
                        <tr>
                            <td><input type="text" class="form-control pl-0" placeholder="NAME" /></td>
                            <td><input type="email" class="form-control pl-0" placeholder="EMAIL" /></td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="text" class="form-control pl-0" placeholder="ADDRESS" /></td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="text" class="form-control pl-0" placeholder="MESSAGES" /></td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center pl-0"><button type="submit" class="btn btn-dark">SEND</button></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="col-md-3 footer3 wow bounceInRight" data-wow-delay=".25s">
                <h5>ADDRESS</h5>
                <p>Lorem ipsum dolor sit
                    amet, consectetuer adipiscing elit.</p>
                <h5>PHONE</h5>
                <p>253232323232</p>
                <h5>EMAIL</h5>
                <p>email@example.com</p>
                <div class="social-links">
                    <ul class="nav nav-item">
                        <li><a href="https://www.facebook.com/fh5co" class="btn btn-secondary mr-1 mb-2"><img src="images/facebook.png" alt="facebook" /></a></li>
                        <li><a href="#"  class="btn btn-secondary mr-1 ml-1 mb-2"><img src="images/facebook.png" alt="facebook" /></a></li>
                        <li><a href="#"  class="btn btn-secondary mr-1 ml-1 mb-2"><img src="images/facebook.png" alt="facebook" /></a></li>
                        <li><a href="#"  class="btn btn-secondary ml-1 mb-2"><img src="images/facebook.png" alt="facebook" /></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- Optional JavaScript -->
<!-- jQuery first, then Bootstrap JS, ... -->

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/parallax.js"></script>
<script src="js/wow.js"></script>
<script src="js/main.js"></script>

<%--<div id="carouselExampleControls" class="carousel slide bs-slider box-slider" data-ride="carousel" data-pause="hover" data-interval="false" >--%>
<%--    <!-- Indicators -->--%>
<%--    <ol class="carousel-indicators">--%>
<%--        <li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>--%>
<%--        <li data-target="#carouselExampleControls" data-slide-to="1"></li>--%>
<%--        <li data-target="#carouselExampleControls" data-slide-to="2"></li>--%>
<%--    </ol>--%>
<%--    <div class="carousel-inner" role="listbox">--%>
<%--        <div class="carousel-item active">--%>
<%--            <div id="home" class="first-section" style="background-image:url('image/banner2.jpg');">--%>
<%--                <div class="dtab">--%>
<%--                    <div class="container">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-md-12 col-sm-12 text-right">--%>
<%--                                <div class="big-tagline">--%>
<%--                                    <h2><strong>BeachVolleyball club </strong> Ružomberok</h2>--%>
<%--                                    <p class="lead">Super text, ktorý dokonale vystihuje naš klub. </p>--%>
<%--                                    <a href="#" class="hover-btn-new"><span>Contact Us</span></a>--%>
<%--                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--                                    <a href="#" class="hover-btn-new"><span>Read More</span></a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div><!-- end row -->--%>
<%--                    </div><!-- end container -->--%>
<%--                </div>--%>
<%--            </div><!-- end section -->--%>
<%--        </div>--%>
<%--        <div class="carousel-item">--%>
<%--            <div id="home" class="first-section" style="background-image:url('images/slider-02.jpg');">--%>
<%--                <div class="dtab">--%>
<%--                    <div class="container">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-md-12 col-sm-12 text-left">--%>
<%--                                <div class="big-tagline">--%>
<%--                                    <h2 data-animation="animated zoomInRight">VK One <strong>Ruzomberok</strong></h2>--%>
<%--                                    <p class="lead" data-animation="animated fadeInLeft">Volejbalový klub kde to žije. </p>--%>
<%--                                    <a href="#" class="hover-btn-new"><span>Contact Us</span></a>--%>
<%--                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--                                    <a href="#" class="hover-btn-new"><span>Read More</span></a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div><!-- end row -->--%>
<%--                    </div><!-- end container -->--%>
<%--                </div>--%>
<%--            </div><!-- end section -->--%>
<%--        </div>--%>
<%--        <div class="carousel-item">--%>
<%--            <div id="home" class="first-section" style="background-image:url('images/slider-03.jpg');">--%>
<%--                <div class="dtab">--%>
<%--                    <div class="container">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-md-12 col-sm-12 text-center">--%>
<%--                                <div class="big-tagline">--%>
<%--                                    <h2 data-animation="animated zoomInRight"><strong>Mario Vitaz</strong> je najlepsi</h2>--%>
<%--                                    <p class="lead" data-animation="animated fadeInLeft">Siaho dlhe liltanie o hrdinskych cinoch Maria Vitaza </p>--%>
<%--                                    <a href="#" class="hover-btn-new"><span>Contact Us</span></a>--%>
<%--                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--                                    <a href="#" class="hover-btn-new"><span>Read More</span></a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div><!-- end row -->--%>
<%--                    </div><!-- end container -->--%>
<%--                </div>--%>
<%--            </div><!-- end section -->--%>
<%--        </div>--%>
<%--        <!-- Left Control -->--%>
<%--        <a class="new-effect carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">--%>
<%--            <span class="fa fa-angle-left" aria-hidden="true"></span>--%>
<%--            <span class="sr-only">Previous</span>--%>
<%--        </a>--%>

<%--        <!-- Right Control -->--%>
<%--        <a class="new-effect carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">--%>
<%--            <span class="fa fa-angle-right" aria-hidden="true"></span>--%>
<%--            <span class="sr-only">Next</span>--%>
<%--        </a>--%>
<%--    </div>--%>
<%--</div>--%>


<%@include file="components/foot.jsp" %>