package com.shiv.controller;

import com.shiv.dao.UserDao;
import com.shiv.model.User;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/user")
public class UserServlet extends HttpServlet {

    private UserDao dao = new UserDao();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String action = req.getParameter("action");

        if (action == null) action = "list";

        switch (action) {

            case "delete":
                Long id = Long.parseLong(req.getParameter("id"));
                dao.delete(id);
                resp.sendRedirect("user");
                break;

            case "edit":
                Long editId = Long.parseLong(req.getParameter("id"));
                User user = dao.getById(editId);
                req.setAttribute("user", user);
                req.getRequestDispatcher("edit.jsp").forward(req, resp);
                break;

            default:
                req.setAttribute("users", dao.getAll());
                req.getRequestDispatcher("list.jsp").forward(req, resp);
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {

        String id = req.getParameter("id");

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if (id == null || id.isEmpty()) {
            // CREATE
            dao.save(new User(name, email, password));
        } else {
            // UPDATE
            User user = new User(name, email, password);
            user.setId(Long.parseLong(id));
            dao.update(user);
        }

        resp.sendRedirect("user");
    }
}