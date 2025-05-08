package com.example.session03_java.bai9;
import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    private UserManager userManager = new UserManager();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("userList", userManager.getUsers());
        request.getRequestDispatcher("listUser.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if ("add".equals(action)) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            User user = new User(userManager.getNextId(), name, email);
            userManager.addUser(user);
        } else if ("remove".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            userManager.removeUser(id);
        }
        request.setAttribute("userList", userManager.getUsers());
        request.getRequestDispatcher("listUser.jsp").forward(request, response);
    }

    public void destroy() {
    }
}