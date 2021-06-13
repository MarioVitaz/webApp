package sk.Servlets;

import com.google.gson.Gson;
import com.sdicons.json.mapper.helper.impl.ObjectMapper;
import sk.DatabaseConnectionManager;
import sk.User.User;
import sk.User.UserController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

@WebServlet(name = "testServlet",urlPatterns = "/testServlet")
public class testServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search_name = request.getParameter("name_search");
        List<User> users = new ArrayList<>();
        String sql="SELECT * FROM users WHERE meno LIKE ? OR priezvisko LIKE ? OR email LIKE ? OR pohlavie LIKE ?";

        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);


        ) {
                ps.setString(1, "%" + search_name + "%");
                ps.setString(2, "%" + search_name + "%");
                ps.setString(3, "%" + search_name + "%");
                ps.setString(4, "%" + search_name + "%");


            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(
                        rs.getInt("id"),
                        rs.getInt("telefon"),
                        rs.getString("meno"),
                        rs.getString("priezvisko"),
                        rs.getString("email"),
                        rs.getString("pohlavie"),
                        rs.getInt("body"));
                users.add(user);
                response.getWriter().println("<tr><td>"+user.getId()+"</td><td>"+user.getMeno()+"</td><td>"+user.getPriezvisko()+"</td>" +
                        "<td>"+user.getEmail()+"</td><td>"+user.getTelefon()+"</td><td>"+user.getPohlavie()+"</td><td>"
                        +user.getBody()+"</td></tr>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
//        String pom = null;
//        for (User p : users) {
//            pom += "<tr><td>"+p.getId()+"</td><td>"+p.getMeno()+"</td><td>"+p.getPriezvisko()+"</td>" +
//                    "<td>"+p.getEmail()+"</td><td>"+p.getTelefon()+"</td><td>"+p.getPohlavie()+"</td><td>"
//                    +p.getBody()+"</td></tr>";
//            response.setContentType("text/html");
//
//            if (pom.length() >= 1) {
//                response.getWriter().println(pom);
//            }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

