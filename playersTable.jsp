<%@ page import="sk.User.User" %>
<%@ page import="java.util.List" %>
<%@ page import="sk.User.UserController" %>
<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 11. 5. 2020
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UserController userController = new UserController();


    List<User> userList = userController.getAllPlayers();

%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="Menu/menuAdmin.jsp"%>
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
                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </div>
</div>
</body>
</html>
