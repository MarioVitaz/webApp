package sk.Servlets;

import sk.Turnaments.Turnament;
import sk.Turnaments.TurnamentsController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "TurnajInsertServlet", urlPatterns = "/insertTrurnament")
public class TurnajInsertServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String nazov = request.getParameter("nazov");
        String popis = request.getParameter("popis");
        String datum = request.getParameter("datum");
        String startovne = request.getParameter("startovne");
        String kategoria = request.getParameter("kategoria");


        if (nazov != null || !nazov.isEmpty() &&
                popis != null && !popis.isEmpty() &&
                startovne != null && !startovne.isEmpty() &&
                kategoria != null && !kategoria.isEmpty()
        ) {
            Integer startovne1 = Integer.parseInt(startovne);
            Integer kategoria1 = Integer.parseInt(kategoria);

            Turnament turnament = new Turnament(startovne1, nazov, popis, datum, kategoria1);
            TurnamentsController turnamentsController = new TurnamentsController();
            turnamentsController.insertTurnament(turnament);
            response.sendRedirect("turnaje.jsp");
            System.out.println("Turnaj vložený");
        }else{
            response.sendRedirect("index.jsp");
            System.out.println("");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
