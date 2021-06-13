<%@ page import="sk.User.User" %>
<%@ page import="java.util.List" %>
<%@ page import="sk.User.UserController" %><%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 11. 5. 2020
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        UserController userController = new UserController();


        User user = new User(userController.getUser(1));

    %>
</head>
<body>
<%@include file="Menu/menuAdmin.jsp"%>
</body>
</html>
