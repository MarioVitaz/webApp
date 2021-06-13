<%@ page import="sk.Turnaments.Turnament" %>
<%@ page import="sk.Turnaments.TurnamentsController" %>
<%@ page import="java.util.List" %>
<%@include file="components/head.jsp" %>


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

<div id="carouselExampleControls" class="carousel slide bs-slider box-slider" data-ride="carousel" data-pause="hover" data-interval="false" >
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleControls" data-slide-to="1"></li>
        <li data-target="#carouselExampleControls" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <div id="home" class="first-section" style="background-image:url('image/slider01.jpg');">
                <div class="dtab">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 text-right">
                                <div class="big-tagline">
                                    <h2><strong>BeachVolleyball </strong> California</h2>
                                    <p class="lead">Novo zrekonstruovaný areál beach volleybalových kurtov v Ružomberku </p>
                                    <a href="#" class="hover-btn-new"><span>Contact Us</span></a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#" class="hover-btn-new"><span>Read More</span></a>
                                </div>
                            </div>
                        </div><!-- end row -->
                    </div><!-- end container -->
                </div>
            </div><!-- end section -->
        </div>
        <div class="carousel-item">
            <div id="home" class="first-section" style="background-image:url('image/DSC_8578.jpg');">
                <div class="dtab">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 text-left">
                                <div class="big-tagline">
                                    <h2 data-animation="animated zoomInRight">Beach <strong>Family day</strong></h2>
                                    <p class="lead" data-animation="animated fadeInLeft">With Landigoo responsive landing page template, you can promote your all hosting, domain and email services. </p>
                                    <a href="#" class="hover-btn-new"><span>Contact Us</span></a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#" class="hover-btn-new"><span>Read More</span></a>
                                </div>
                            </div>
                        </div><!-- end row -->
                    </div><!-- end container -->
                </div>
            </div><!-- end section -->
        </div>
        <div class="carousel-item">
            <div id="home" class="first-section" style="background-image:url('images/slider-03.jpg');">
                <div class="dtab">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 text-center">
                                <div class="big-tagline">
                                    <h2 data-animation="animated zoomInRight"><strong>VPS Servers</strong> Company</h2>
                                    <p class="lead" data-animation="animated fadeInLeft">1 IP included with each server
                                        Your Choice of any OS (CentOS, Windows, Debian, Fedora)
                                        FREE Reboots</p>
                                    <a href="#" class="hover-btn-new"><span>Contact Us</span></a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="#" class="hover-btn-new"><span>Read More</span></a>
                                </div>
                            </div>
                        </div><!-- end row -->
                    </div><!-- end container -->
                </div>
            </div><!-- end section -->
        </div>
        <!-- Left Control -->
        <a class="new-effect carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="fa fa-angle-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>

        <!-- Right Control -->
        <a class="new-effect carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="fa fa-angle-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

<%
    TurnamentsController turnamentsController = new TurnamentsController();
    List<Turnament> turnamentsList = turnamentsController.getAllTurnaments();
%>

<div id="overviews" class="section lb">
    <div class="container">
        <div class="section-title row text-center">
            <div class="col-md-8 offset-md-2">
                <h3>Najbližšie turnaje</h3>
<%--                <p class="lead">Lorem Ipsum dolroin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem!</p>--%>
            </div>
        </div><!-- end title -->
        <%
            int i = 0;
            for (Turnament t : turnamentsList){
                i++;
                if(i%2 ==0){
        %>
        <div class="row align-items-center">
            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                <div class="message-box">
                    <h3><%=t.getNazov()%></h3>
                    <h5>Kategoria<%=t.getCat()%></h5>
                    <p><%=t.getPopis()%></p>
                    <p class="text-center">Startovne: <%=t.getStartovne()%></p>
                    <a href="turnajDetail.jsp?id=<%=t.getId()%>" class="hover-btn-new orange"><span>Detail</span></a>
                </div><!-- end messagebox -->
            </div><!-- end col -->

            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                <div class="post-media wow fadeIn">
                    <img src="images/about_02.jpg" alt="" class="img-fluid img-rounded">
                </div><!-- end media -->
            </div><!-- end col -->
        </div>
        <%
        }else {
        %>
        <div class="row align-items-center">
            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                <div class="post-media wow fadeIn">
                    <img src="images/about_03.jpg" alt="" class="img-fluid img-rounded">
                </div><!-- end media -->
            </div><!-- end col -->

            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                <div class="message-box">
                    <h3><%=t.getNazov()%></h3>
                    <h5>Kategoria: <%=t.getCat()%></h5>
                    <p><%=t.getPopis()%></p>
                    <p class="text-center">Startovne: <%=t.getStartovne()%></p>
                    <a href="turnajDetail.jsp?id=<%=t.getId()%>" class="hover-btn-new orange"><span>Detail</span></a>
                </div><!-- end messagebox -->
            </div><!-- end col -->

        </div>
        <%
        }
            if(i ==2)
            break;}
        %><!-- end row -->
    </div><!-- end container -->
</div><!-- end section -->

<div class="container-fluid fh5co-content-box text-center">
    <div class="container">
        <div class="row trainers pl-0 pr-0">
            <div class="col-12 bg-50">
                <div class="quote-box2 wow bounceInDown " data-wow-delay=".25s">
                    <h2 class="section-title h2 train-text"> TRAINERS </h2>
                </div>
            </div>
            <div class="col-md-6 pr-5 pl-5">
                <div class="card text-center wow bounceInLeft" data-wow-delay=".25s"> <img class="card-img-top rounded-circle img-fluid" src="image/mario.jpg" alt="Card image">
                    <div class="card-body mb-5">
                        <h4 class="card-title">Majko</h4>
                        <p class="card-text">Trainers, athletes and serious clients alike are looking for the toughest, most brutally productive training techniques to spice up their workouts and provide a truly unique challenge</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 pl-5 pr-5">
                <div class="card text-center wow bounceInRight" data-wow-delay=".25s"> <img class="card-img-top rounded-circle img-fluid" src="image/Adrian.jpg" alt="Card image">
                    <div class="card-body mb-5">
                        <h4 class="card-title">Zlatovlaska</h4>
                        <p class="card-text">Trainers, athletes and serious clients alike are looking for the toughest, most brutally productive training techniques to spice up their workouts and provide a truly unique challenge</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--<footer class="container-fluid">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-3 footer1 d-flex wow bounceInLeft" data-wow-delay=".25s">--%>
<%--                <div class="d-flex flex-wrap align-content-center"> <a href="#"><img src="images/logo.png" alt="logo" /></a>--%>
<%--                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo--%>
<%--                        dolor. Ae</p>--%>
<%--                    <p>&copy; 2018 Foxpro. All rights reserved.<br> Design by <a href="https://freehtml5.co" target="_blank">FreeHTML5</a>.</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-6 footer2 wow bounceInUp" data-wow-delay=".25s" id="contact">--%>
<%--                <div class="form-box">--%>
<%--                    <h4>CONTACT US</h4>--%>
<%--                    <table class="table table-responsive d-table">--%>
<%--                        <tr>--%>
<%--                            <td><input type="text" class="form-control pl-0" placeholder="NAME" /></td>--%>
<%--                            <td><input type="email" class="form-control pl-0" placeholder="EMAIL" /></td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td colspan="2"></td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td colspan="2"><input type="text" class="form-control pl-0" placeholder="ADDRESS" /></td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td colspan="2"></td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td colspan="2"><input type="text" class="form-control pl-0" placeholder="MESSAGES" /></td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td colspan="2"></td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td colspan="2" class="text-center pl-0"><button type="submit" class="btn btn-dark">SEND</button></td>--%>
<%--                        </tr>--%>
<%--                    </table>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-3 footer3 wow bounceInRight" data-wow-delay=".25s">--%>
<%--                <h5>ADDRESS</h5>--%>
<%--                <p>Lorem ipsum dolor sit--%>
<%--                    amet, consectetuer adipiscing elit.</p>--%>
<%--                <h5>PHONE</h5>--%>
<%--                <p>253232323232</p>--%>
<%--                <h5>EMAIL</h5>--%>
<%--                <p>email@example.com</p>--%>
<%--                <div class="social-links">--%>
<%--                    <ul class="nav nav-item">--%>
<%--                        <li><a href="https://www.facebook.com/fh5co" class="btn btn-secondary mr-1 mb-2"><img src="images/facebook.png" alt="facebook" /></a></li>--%>
<%--                        <li><a href="#"  class="btn btn-secondary mr-1 ml-1 mb-2"><img src="images/facebook.png" alt="facebook" /></a></li>--%>
<%--                        <li><a href="#"  class="btn btn-secondary mr-1 ml-1 mb-2"><img src="images/facebook.png" alt="facebook" /></a></li>--%>
<%--                        <li><a href="#"  class="btn btn-secondary ml-1 mb-2"><img src="images/facebook.png" alt="facebook" /></a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</footer>--%>




<%@include file="components/foot.jsp" %>