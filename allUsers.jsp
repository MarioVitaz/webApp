<%@ page import="sk.User.User" %>
<%@ page import="sk.User.UserController" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 11. 5. 2020
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@include file="components/head.jsp"%>
        <%
        UserController userController = new UserController();


        List<User> userList = userController.getAllUsers();

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
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Name" aria-label="Name" aria-describedby="basic-addon1">
            </div>
        </div>
    </div>
</div>
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <table class="table table-striped">
                    <tr>
                        <td>ID</td>
                        <td>Meno</td>
                        <td>Priezvisko</td>
                        <td>Mail</td>
                        <td>Telefon</td>
                        <td>Pohlavie</td>
                        <td>Body</td>
                        <td>Uprav</td>
                        <td>Zmaž</td>
                    </tr>
                    <%
                        for (User p : userList) {
                    %>
                    <tr>
                        <td><%=p.getId()%>
                        </td>
                        <td><%=p.getMeno()%>
                        </td>
                        <td><%=p.getPriezvisko()%>
                        </td>
                        <td><%=p.getEmail()%>
                        </td>
                        <td><%=p.getTelefon()%>
                        </td>
                        <td><%=p.getPohlavie()%>
                        </td>
                        <td><%=p.getBody()%>
                        </td>
                        <td><a href="uprav-uzivatela.jsp?id=<%=p.getId()%>" class="btn btn-info" id="blabla">Uprav</a>
                        </td>
                        <td><a href="zmaz-uzivatela.jsp?id=<%=p.getId()%>" class="btn btn-danger">Delete</a>

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
