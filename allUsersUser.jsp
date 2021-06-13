<%@ page import="sk.User.User" %>
<%@ page import="sk.User.UserController" %>
<%@ page import="java.util.List" %>
<%@include file="components/head.jsp" %>
<%
    UserController userController = new UserController();
    List<User> userList = userController.getAllPlayers();

%>
<%
    if (session.getAttribute("sessionType") == "user") {
        out.print("User session");
%>
<%@include file="Menu/menuUser.jsp" %>
<%

    } else {
        response.sendRedirect("index.jsp");
        out.print("No session");
    }
%>

<div class="container" id="players">
    <div class="row">
        <div class="col-sm contet">
            <table class="table table-striped">
                <thead>
                <tr>
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
<%@include file="components/foot.jsp" %>