<%@ page import="sk.Turnaments.Turnament" %>
<%@ page import="sk.Turnaments.TurnamentsController" %>
<%@ page import="java.util.List" %>
<%@ page import="sk.User.UserController" %>
<%@ page import="sk.User.User" %>
<%@include file="components/head.jsp" %>


<%
    if (session.getAttribute("sessionType") == "admin") {
        out.print("Admin session");
%>

<%@include file="Menu/menuAdmin.jsp" %>
<%@include file="admin.jsp" %>
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

    TurnamentsController turnamentsController = new TurnamentsController();
    int id1 = Integer.parseInt(request.getParameter("id"));

    Turnament t = turnamentsController.getTurnament(id1);
%>

<div id="overviews" class="content">
    <div class="container">
        <div class="section-title row text-center">
            <div class="col-md-8 offset-md-2">
                <h3><%=t.getNazov()%>
                </h3>
            </div>
        </div>
        <div class="tournament__details clearfix">
            <div class="tournament__details__item">
                <img src="image/ico_category.png" alt="">
                <span class="tournament__details__item__title">kategoria</span>
                <p><%=t.getCat()%>
                </p>
            </div>

            <div class="tournament__details__item">
                <img src="image/ico_calendar_simple.png" alt="">
                <span class="tournament__details__item__title">Datum</span>
                <p>Datum</p>
            </div>


            <div class="tournament__details__item">
                <img src="image/ico_marker.png" alt="">
                <span class="tournament__details__item__title">Miesto</span>
                <p>California Ružomberok</p>
            </div>


            <div class="tournament__details__item">
                <img src="image/ico_euro.png" alt="">
                <span class="tournament__details__item__title">Startovne</span>
                <p><%=t.getStartovne()%>
                </p>
            </div>
        </div>

    </div>

    <div class="container">
        <div class="tournament_conditions">
            <h3 class="h3-with-line">
                Podmienky turnaja:
            </h3>
            <p>
                <%=t.getPopis()%>
            </p>
            <P>
                Úhrada štartovného 20 €/družstvo vždy do polnoci štvrtka pred turnajom na účet SK9609000000005053868025
                v poznámke uviesť kategóriu a priezvisko jedného z hráčov (napr. Mix Fekete).
            </P>
            <p>
                Úhrada štartovného 25 €/družstvo pri platbe na mieste konania turnaja pri prezentácii družstiev.
            </p>
            <p>
                Systém turnaja (rozdelenie do skupín, počet setov a stav do ktorého sa bude hrať) bude určený v piatok
                pred turnajom podľa počtu prihlásených družstiev.
            </p>

        </div>
<%--<%--%>
<%--    UserController userController = new UserController();--%>
<%--    List<User> userList = userController.getAllRegPlayers(id1);--%>
<%--%>--%>

<%--        <h3 class="h3-with-line">--%>
<%--            Prihlasene dvojice:--%>
<%--        </h3>--%>
<%--        <div class="col-5 ">--%>
<%--            <table class="table table-striped">--%>
<%--                <tr>--%>
<%--                    <td>Hrac 1</td>--%>
<%--                    <td>Priezvisko</td>--%>
<%--                    <td>Hrac 2</td>--%>
<%--                    <td>Priezvisko</td>--%>
<%--                </tr>--%>
<%--                <%--%>
<%--                    for (User p : userList) {--%>
<%--                %>--%>
<%--                <tr>--%>

<%--                    <td><%=p.getMeno()%>--%>
<%--                    </td>--%>
<%--&lt;%&ndash;                    <td><%=p.getPriezvisko1()%>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </td>&ndash;%&gt;--%>
<%--                    <td><%=p.getPriezvisko()%>--%>
<%--                    </td>--%>
<%--&lt;%&ndash;                    <td><%=p.getPriezvisko2()%>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </td>&ndash;%&gt;--%>
<%--                </tr>--%>
<%--                <%--%>
<%--                    }--%>
<%--                %>--%>
<%--            </table>--%>
<%--        </div>--%>

<%--    </div>--%>
<%--</div>--%>


<%@include file="components/foot.jsp" %>