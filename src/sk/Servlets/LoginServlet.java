package sk.Servlets;

import sk.User.User;
import sk.User.UserController;
import sk.AES;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.Document;
import java.io.IOException;
import java.nio.file.spi.FileSystemProvider;

@WebServlet(name = "LoginServlet", urlPatterns = "/loginUser")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        HttpSession session = request.getSession(true);
        String adminEmail = "beachruzomberok@gmail.com";
        String email = request.getParameter("email");
        String password = request.getParameter("heslo");




        User user = new UserController().getUserByEmail(email,AES.encrypt(password, "bombovesifrovanie123"));


        if (user != null) {
            if(user.getEmail().equals(adminEmail)) {
                System.out.print("Welcome, "+ user.getMeno() + user.getId());
               // System.out.println("heslo s zdatabazy je: " + AES.decrypt(user.getHeslo(),"bombovesifrovanie123"));
                session.setAttribute("sessionType", "admin");
                session.setAttribute("id", user.getId());
                response.sendRedirect("index.jsp");
            }else{
                System.out.print("Welcome, "+ user.getMeno());
                session.setAttribute("sessionType", "user");
                session.setAttribute("id", user.getId());
                response.sendRedirect("index.jsp");
            }
        }else{
            System.out.print("Email alebo spatne heslo");
            session.setAttribute("sessionType", null);
            response.sendRedirect("login.jsp");
            response.getWriter().write("error");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}


