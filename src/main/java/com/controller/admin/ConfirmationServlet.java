package com.controller.admin;

import com.dao.*;
import com.model.Order;
import com.model.User;
import com.mysql.jdbc.Driver;
import com.service.MenuService;
import com.service.OrderService;
import com.service.OrderStatusService;
import com.service.UserService;
import org.springframework.jdbc.datasource.SimpleDriverDataSource;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ConfirmationServlet extends HttpServlet {

    private UserService userService = UserService.getInstance();
    private OrderService orderService = OrderService.getInstance();
    private OrderStatusService orderStatusService = OrderStatusService.getInstance();
    private List<List> usersOrders;
    private List<Long> orderNumbers;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<User> allUsers = userService.getUserDAO().getAll();
        System.out.println(allUsers);

        usersOrders = new ArrayList<>();
        orderNumbers = new ArrayList<>();

        for (User user : allUsers) {
            Map<Long, Map<String, Long>> ordersDetails = orderService.orderDetails(user.getUserName(), Order.Status.CREATED);
            if (!ordersDetails.isEmpty()) {
                for (Long number : ordersDetails.keySet()) {
                    orderNumbers.add(number);
                    List details = new ArrayList();
                    details.add(user.getUserName());
                    details.add(number);
                    details.add(ordersDetails.get(number));
                    details.add(orderService.getOrderDAO().getById(number).get().getTotalSum());
                    usersOrders.add(details);
                }
            }
        }

        System.out.println(usersOrders);
        request.setAttribute("usersOrders", usersOrders);

        RequestDispatcher dispatcher = request.getRequestDispatcher("admin_confirmation.jsp");
        if (dispatcher != null) {
            dispatcher.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("admin_confirmation.jsp").include(request, response);


        System.out.println(orderNumbers);

        Boolean isConfirmButtonClicked = request.getParameter("Confirm") != null;
        Boolean isCancelButtonClicked = request.getParameter("Cancel") != null;

        for (Long number : orderNumbers) {
            Boolean checked = request.getParameter(number.toString()) != null;
            if (checked) {
                if (isConfirmButtonClicked) {
                    orderStatusService.confirmOrder(number);
                }
                if (isCancelButtonClicked) {
                    orderService.cancelOrder(number);
                }
            }
        }


        response.sendRedirect("success.jsp");

    }
}