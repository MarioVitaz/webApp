<%@ page import="sk.User.UserController" %>
<%@ page import="sk.User.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 11. 5. 2020
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@include file="components/head.jsp" %>
<%
    UserController userController = new UserController();
    List<User> userList = userController.getAllCoaches();

%>

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


<div class="container">
    <div class="row">
        <div class="col-sm">
            <table class="table table-striped">
                <tr>
                    <td>Meno</td>
                    <td>Priezvisko</td>
                    <td>Email</td>
                    <td>Telefon</td>
                </tr>
                <%
                    for (User p : userList) {
                %>
                <tr>
                    <td><%=p.getMeno()%>
                    </td>
                    <td><%=p.getPriezvisko()%>
                    </td>
                    <td><%=p.getEmail()%>
                    </td>
                    <td><%=p.getTelefon()%>
                    </td>

                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </div>
</div>


<%@include file="components/foot.jsp"%>