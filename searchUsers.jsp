<%@ page import="sk.User.User" %>
<%@ page import="sk.User.UserController" %>
<%@ page import="java.util.List" %>
<%@include file="components/head.jsp" %>
<%
    UserController userController = new UserController();
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
<div class="container">
    <div class="row">

        <div class="col-8">
            <span class="input-group-addon">Search </span>
            <input type="text" name="name_search" id="name_search"
                   placeholder="Vyhladat meno" class="form-control">
        </div>
    </div>
</div>
<%
    String search = request.getParameter("name_search");
    List<User> userList = userController.getUserSearch(search);
%>

<div class="container" id="players">
    <div class="row">
        <div class="col-sm contet">
            <table class="table table-striped">
                <thead>
                <tr>
                    <td>ID</td>
                    <td>Meno</td>
                    <td>Priezvisko</td>
                    <td>Mail</td>
                    <td>Telefon</td>
                    <td>Pohlavie</td>
                    <td>Body</td>
                </tr>
                </thead>
                <tbody id="playersTable">
                </tbody>

            </table>
        </div>
    </div>
</div>
<%@include file="components/foot.jsp" %>