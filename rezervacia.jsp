<%@ page import="sk.Turnaments.Turnament" %>
<%@ page import="sk.Turnaments.TurnamentsController" %>
<%@ page import="java.util.List" %>
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
%>
<div class="container">
    <div class="row">
        <iframe src="https://sportpass.me/gyms/ihrisko" width="650px" height="600px">
            <p>Your browser does not support iframes.</p>
        </iframe>
    </div>
</div>

<%@include file="components/foot.jsp" %>