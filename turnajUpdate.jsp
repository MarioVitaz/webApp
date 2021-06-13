<%@ page import="sk.User.UserController" %>
<%@ page import="sk.User.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="sk.DatabaseConnectionManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="sk.Turnaments.TurnamentsController" %>
<%@ page import="sk.Turnaments.Turnament" %>

<%@include file="components/head.jsp"%>
<%@include file="Menu/menuAdmin.jsp"%>

<title>Title</title>
<%
    TurnamentsController turnamentsController = new TurnamentsController();
    int id1 = Integer.parseInt(request.getParameter("id"));

    Turnament t = turnamentsController.getTurnament(id1);
    System.out.println(id1);
    List<Turnament> turnamentType = new ArrayList<>();
    String sql = "SELECT * FROM turnamenttype";
    try (
            Connection con = DatabaseConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
    ) {
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Turnament turnament = new Turnament(
                    rs.getInt("id_cat"),
                    rs.getString("cat"));
            turnamentType.add(turnament);
        }
    }catch (SQLException e) {
        e.printStackTrace();
    }

%>

<div class="container">
    <div class="row">

        <div class="col-sm">
            <h1>Turnament update: <%=t.getNazov()%> </h1>
            <form method="post" action="updateTurnament">

                <div class="form-group" hidden>
                    <label for="id2">Id</label>
                    <input type="text" class="form-control" id="id2" name="id2" placeholder="id2"
                           value="<%=t.getId()%>">
                </div>
                <div class="form-group">
                    <label for="nazov">Nazov: *</label>
                    <input type="text" class="form-control" id="nazov" name="nazov" placeholder="nazov" required
                    value="<%=t.getNazov()%>">
                </div>

                <div class="form-group">
                    <label for="popis">Popis turnaja: *</label>
                    <textarea class="form-control" id="popis"  name="popis" rows="5"
                              ><%=t.getPopis()%></textarea>
                </div>

                <div class="form-group">
                    <label for="startovne">Startovne: *</label>
                    <input type="tel" class="form-control" id="startovne" name="startovne" placeholder="startovne" required
                           value="<%=t.getStartovne()%>">
                </div>

                <div class="form-group">
                    <label for="kategoria">Kategoria</label>
                    <select class="form-control" id="kategoria" name="kategoria" placeholder="kategoria">
                        <%
                            for (Turnament q : turnamentType) {
                        %>
                        <option value="<%=q.getId_cat()%>"
                        <%
                            if(t.getId_cat() == q.getId_cat())
                        %>selected


                        ><%=q.getCat()%></option>
                        <%
                            }
                        %>

                    </select>
                </div>
                <%--                <div class="form-group">--%>
                <%--                    <label for="obrazok">Obrazok</label>--%>
                <%--                    <div class="col-sm-10">--%>
                <%--                        <input type="file" class="form-control"  id="obrazok" name="obrazok">--%>
                <%--                    </div>--%>
                <%--                </div>--%>


                <button type="submit" class="btn btn-primary">Update turnaj</button>
                <a href="turnajeAdmin.jsp">Back</a>
            </form>
        </div>

    </div>
</div>

<%@include file="components/foot.jsp"%>