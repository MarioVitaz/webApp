package sk.Servlets;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import sk.User.User;
import sk.User.UserController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "userTypeServlet", urlPatterns = "/userTypeServlet")
public class userTypeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserController uc = new UserController();
        ArrayList<User> allTypeUser = uc.selectUserType();
        Gson json = new Gson();
        JsonElement el =json.toJsonTree(allTypeUser, new TypeToken<ArrayList<User>>() {}.getType());
        JsonArray jsonArray = el.getAsJsonArray();

        response.getWriter().print(jsonArray);
    }
}
