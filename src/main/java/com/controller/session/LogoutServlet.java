package com.controller.session;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getSession().setAttribute("loggedInUser", null);
        request.getSession().invalidate();

        RequestDispatcher dispatcher = request
                .getRequestDispatcher("index.jsp");
        if (dispatcher != null) {
            dispatcher.forward(request, response);
        }
    }

}