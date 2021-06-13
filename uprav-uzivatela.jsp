<%@ page import="sk.User.UserController" %>
<%@ page import="sk.User.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="sk.DatabaseConnectionManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>

<%@include file="components/head.jsp"%>
<%@include file="Menu/menuAdmin.jsp"%>

    <title>Title</title>
    <%
        UserController userController = new UserController();
        int id1 = Integer.parseInt(request.getParameter("id"));

        User p = userController.getUser(id1);

    %>
<%
    List<User> typeUser =new ArrayList<>();
    String sql = "SELECT * FROM userType";
    try (
            Connection con = DatabaseConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
    ) {
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            User user = new User(rs.getInt("id"),
                    rs.getString("typeUser"));
            typeUser.add(user);
        }
    }catch (SQLException e) {
        e.printStackTrace();
    }
%>

<div class="page-header">

    <div class="container">
        <h1>User update: <%=p.getMeno() %> </h1>
        <div class="row">
            <div class="col-sm">
                <form method="post" action="updateUser">
                    <div class="form-group" hidden>
                        <label for="id2">Id</label>
                        <input type="text" class="form-control" id="id2" name="id2" placeholder="id2"
                               value="<%=p.getId()%>">
                    </div>

                    <div class="form-group">
                        <label for="meno">Meno: *</label>
                        <input type="text" class="form-control" id="meno" name="meno" placeholder="meno"
                               value="<%=p.getMeno() %>">
                    </div>

                    <div class="form-group">
                        <label for="priezvisko">Priezvisko: *</label>
                        <input type="text" class="form-control" id="priezvisko" name="priezvisko"
                               placeholder="priezvisko"
                               value="<%=p.getPriezvisko() %>">
                    </div>

                    <div class="form-group">
                        <label for="email">E-mail: *</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="email"
                               value="<%=p.getEmail() %>">
                    </div>

                    <div class="form-group">
                        <label for="heslo">Heslo: *</label>
                        <input type="password" class="form-control" id="heslo" name="heslo" placeholder="heslo"
                               value="<%=p.getHeslo() %>">
                    </div>

                    <div class="form-group">
                        <label for="telefon">Telefón: *</label>
                        <input type="tel" class="form-control" id="telefon" name="telefon" placeholder="telefon"
                               value="<%=p.getTelefon() %>">
                    </div>

                    <div class="form-group">
                        <label for="pohlavie">Pohlavie</label>
                        <select class="form-control" id="pohlavie" name="pohlavie" placeholder="pohlavie"
                                value="<%=p.getPohlavie() %>">
                            <option>Muz</option>
                            <option>Zena</option>

                        </select>
                    </div>
                    <div class="form-group">
                        <label for="body">Body: *</label>
                        <input type="text" class="form-control" id="body" name="body" placeholder="body"
                               value="<%=p.getBody() %>">
                    </div>
<%
    int aktialSkupina = p.getId_skupina();
%>
                    <div class="form-group">
                        <label for="skupina">Skupina</label>
                        <select class="form-control" id="skupina" name="skupina" placeholder="skupina"
                                value="<%=p.getId_skupina() %>">
                            <%
                                for (User q : typeUser) {
                            %>

                            <option value="<%=q.getId()%>"
                            <%
                                if(p.getId_skupina() == q.getId())
                            %>selected

                            ><%=q.getTypeUser()%></option>
                            <%
                                }
                            %>
                        </select>
                    </div>


                    <button type="submit" class="btn btn-primary">Upraviť</button>
                    <a href="allUsers.jsp">Back</a>

                </form>
            </div>
        </div>
    </div>
</div>
<%@include file="components/foot.jsp"%>
