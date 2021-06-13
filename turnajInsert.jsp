<%@ page import="sk.Turnaments.TurnamentsController" %>
<%@ page import="sk.Turnaments.Turnament" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="sk.DatabaseConnectionManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@include file="components/head.jsp"%>
<%
    if (session.getAttribute("sessionType") == "admin") {
        out.print("Admin session");
%>

<%@include file="Menu/menuAdmin.jsp"%>
<%
} else {
    out.print("No session");
    response.sendRedirect("index.jsp");
%>
<%@include file="Menu/menu.jsp" %>
<%
    }
%>
<%
    List<Turnament> categ = new ArrayList<>();
    String sql = "SELECT * FROM turnamenttype";
    try (
            Connection con = DatabaseConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
    ) {

        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Turnament cat = new Turnament(
                    rs.getInt("id_cat"),
                    rs.getString("cat"));
            categ.add(cat);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>

<div class="container">
    <div class="row">
        <div class="col-sm">
            <form method="post" action="insertTrurnament">

                <div class="form-group">
                    <label for="nazov">Nazov: *</label>
                    <input type="text" class="form-control" id="nazov" name="nazov" placeholder="nazov" required>
                </div>

                <div class="form-group">
                    <label for="popis">Popis turnaja: *</label>
                    <textarea class="form-control" id="popis"  name="popis" rows="3"></textarea>
                </div>

                <div class="form-group">
                    <label for="datum">Datum: *</label>
                    <input type="date" class="form-control" id="datum" name="datum" placeholder="datum" required>
                </div>

                <div class="form-group">
                    <label for="startovne">Startovne: *</label>
                    <input type="tel" class="form-control" id="startovne" name="startovne" placeholder="startovne" required>
                </div>

                <div class="form-group">
                    <label for="kategoria">Kategoria</label>
                    <select class="form-control" id="kategoria" name="kategoria" placeholder="kategoria">
                        <%
                            for (Turnament q : categ) {
                        %>
                        <option value="<%=q.getId_cat()%>"><%=q.getCat()%></option>
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


                <button type="submit" class="btn btn-primary">Vlazit turnaj</button>
            </form>
        </div>

    </div>
</div>





<%@include file="components/foot.jsp"%>