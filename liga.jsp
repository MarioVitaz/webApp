<%@ page import="sk.User.UserController" %>
<%@ page import="sk.User.User" %>
<%@ page import="java.util.List" %>
<%@include file="components/head.jsp" %>
<%
    UserController userController = new UserController();
    List<User> userList = userController.getAllUsers();
%>

<%
    if (session.getAttribute("sessionType") == "admin") {
        out.print("Admin session");
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
        <div class="col-5 ">
            <table class="table table-striped">
                <tr>
                    <td>Meno</td>
                    <td>Priezvisko</td>
                    <td>Body</td>
                </tr>
                <%
                    for (User p : userList) {
                %>
                <tr>

                    <td><%=p.getMeno()%>
                    </td>
                    <td><%=p.getPriezvisko()%>
                    </td>
                    <td><%=p.getBody()%>
                    </td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
        <div class="col-1 "></div>
        <div class="col-5 ">
            <table class="table table-striped" >
                <tr>

                    <td>Meno</td>
                    <td>Priezvisko</td>
                    <td>Body</td>
                </tr>
                <%
                    for (User p : userList) {
                %>
                <tr>

                    <td><%=p.getMeno()%>
                    </td>
                    <td><%=p.getPriezvisko()%>
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

<%@include file="components/foot.jsp" %>