package com.controller;

import com.model.Order;
import com.model.User;
import com.service.OrderService;
import com.service.OrderStatusService;
import com.service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BillCreationServlet extends HttpServlet {

    private Map<String, Map<String, Long>> menu;
    private UserService userService = UserService.getInstance();
    private OrderService orderService = OrderService.getInstance();
    private OrderStatusService orderStatusService = OrderStatusService.getInstance();
    private Map<String, Map<Long, Map<String, Long>>> usersOrders;
    private List<Long> orderNumbers;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<User> allUsers = userService.getUserDAO().getAll();
        System.out.println(allUsers);

        usersOrders = new HashMap<>();
        orderNumbers = new ArrayList<>();

        for (User user : allUsers) {
            Map<Long, Map<String, Long>> ordersDetails = orderService.orderDetails(user.getUserName(), Order.Status.CONFIRMED);
            if (!ordersDetails.isEmpty()) {
                for (Long number : ordersDetails.keySet()) {
                    orderNumbers.add(number);
                }
                usersOrders.put(user.getUserName(), ordersDetails);
            }
        }

        request.setAttribute("usersOrders", usersOrders);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/bill_creation.jsp");
        if (dispatcher != null) {
            dispatcher.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("bill_creation.jsp").include(request, response);


        System.out.println(orderNumbers);

        Boolean isBillButtonClicked = request.getParameter("Bill") != null;
        Boolean isCancelButtonClicked = request.getParameter("Cancel") != null;

        for (Long number : orderNumbers) {
            Boolean checked = request.getParameter(number.toString()) != null;
            if (checked) {
                if (isBillButtonClicked) {
                    orderStatusService.makeBill(number);
                }
                if (isCancelButtonClicked) {
                    orderService.cancelOrder(number);
                }
            }
        }


        response.sendRedirect("/success.jsp");

    }
}