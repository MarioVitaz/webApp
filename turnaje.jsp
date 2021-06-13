<%@ page import="sk.Turnaments.TurnamentsController" %>
<%@ page import="sk.Turnaments.Turnament" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="sk.DatabaseConnectionManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<%@include file="components/head.jsp"%>
    <%
        if (session.getAttribute("sessionType") == "admin") {
            out.print("Admin session");
    %>
    <%@include file="Menu/menuAdmin.jsp" %>
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

    <%
        TurnamentsController turnamentsController = new TurnamentsController();
        List<Turnament> turnamentsList = turnamentsController.getAllTurnaments();
    %>

<%--<div class="all-title-box">--%>
<%--    <div class="container text-center">--%>
<%--        <h1>Turnaje<span class="m_1">Lorem Ipsum dolroin gravida nibh vel velit.</span></h1>--%>
<%--    </div>--%>
<%--</div>--%>


<div id="overviews" class="section lb">
    <div class="container">
        <div class="section-title row text-center">
            <div class="col-md-8 offset-md-2">
                <h3>Turnaje</h3>
                <p class="lead">Lorem Ipsum dolroin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem!</p>
            </div>
        </div><!-- end title -->
        <%
            int i = 1;
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
                    <h5>Kategoria<%=t.getCat()%></h5>
                    <p><%=t.getPopis()%></p>
                    <p class="text-center">Štartovné: <%=t.getStartovne()%></p>
                    <a href="turnajDetail.jsp?id=<%=t.getId()%>" class="hover-btn-new orange"><span>Learn More</span></a>
                </div><!-- end messagebox -->
            </div><!-- end col -->

        </div>
        <%
        }}
        %><!-- end row -->
    </div><!-- end container -->
</div><!-- end section -->



<%--<div class="container">--%>
<%--    <h1 class="text-center">Turnaje píčo</h1>--%>

<%--    <div class="col-md-12">--%>
<%--        <div class="row">--%>

<%--            <div class="col-md-3 text-center">--%>
<%--                <h4 text-center><%=t.getNazov()%></h4>--%>
<%--                <p class="text-center"><%=t.getPopis()%></p>--%>
<%--                <p class="text-center">Štartovné: <%=t.getStartovne()%></p>--%>
<%--                <p class="text-center">Kategória: <%=t.getKategoria()%></p>--%>
<%--            </div>--%>
<%--            <%--%>
<%--                }--%>
<%--            %>--%>


<%--        </div>--%>

<%--    </div>--%>
<%--</div>--%>



<%@include file="components/foot.jsp"%>
