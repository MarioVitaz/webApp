package sk.Servlets;

import sk.User.User;
import sk.User.UserController;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateUserServlet", urlPatterns = "/updateUser")
public class UpdateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        System.out.println("som v servlete");

        String id = request.getParameter("id2");
        String meno = request.getParameter("meno");
        String priezvisko = request.getParameter("priezvisko");
        String email = request.getParameter("email");
        String heslo = request.getParameter("heslo");
        String telefon = request.getParameter("telefon");
        String pohlavie = request.getParameter("pohlavie");
        String body = request.getParameter("body");
        String skupina = request.getParameter("skupina");

        if (
                meno != null || !meno.isEmpty() &&
                        priezvisko != null && !priezvisko.isEmpty() &&
                        email != null && !email.isEmpty() &&
                        heslo != null && !heslo.isEmpty() &&
                        telefon != null && !telefon.isEmpty() &&
                        pohlavie != null && !pohlavie.isEmpty() &&
                        body != null && !body.isEmpty() &&
                        skupina != null && !skupina.isEmpty()

        ) {

            Integer id1 = Integer.parseInt(id);
            Integer body1 = Integer.parseInt(body);
            Integer telefon1 = Integer.parseInt(telefon);
            Integer id_skupina = Integer.parseInt(skupina);
            User user = new User(telefon1, meno, priezvisko, email, heslo, pohlavie, id_skupina, body1);

            UserController userController = new UserController();

            userController.updateUser(id1, user);

            response.sendRedirect("allUsers.jsp");
        } else {
            response.sendRedirect("index.jsp");
            System.out.println("Dojebalo sa to ");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
