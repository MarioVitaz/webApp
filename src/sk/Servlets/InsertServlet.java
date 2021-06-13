package sk.Servlets;

import sk.User.User;
import sk.User.UserController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import sk.AES;


@WebServlet(name = "InsertServlet", urlPatterns = "/insertUser")
public class InsertServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String meno = request.getParameter("meno");
        String priezvisko = request.getParameter("priezvisko");
        String email = request.getParameter("email");
        String heslo = request.getParameter("heslo");
        String telefon  = request.getParameter("telefon");
        String pohlavie = request.getParameter("pohlavie");


        if (meno != null || !meno.isEmpty() &&
                priezvisko != null && !priezvisko.isEmpty() &&
                   email != null && !email.isEmpty() &&
                heslo != null && !heslo.isEmpty()&&
                telefon !=null && !telefon.isEmpty() &&
                pohlavie !=null && !pohlavie.isEmpty()

        ) {
            Integer telefon1 = Integer.parseInt(telefon);
            final String secretKey = "bombovesifrovanie123";
            String encryptedString = AES.encrypt(heslo, secretKey) ;
            User user = new User(meno, priezvisko, email, encryptedString, telefon1, pohlavie);
            UserController userController = new UserController();
            userController.insertUser(user);
            response.sendRedirect("index.jsp");
            System.out.println("Užívateľ vložený");

        }else{
            response.sendRedirect("index.jsp");
            System.out.println("");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
