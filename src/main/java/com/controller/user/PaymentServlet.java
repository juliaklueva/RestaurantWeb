package com.controller.user;

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
import java.util.*;

public class PaymentServlet extends HttpServlet {

    private Map<String, Map<String, Long>> menu;
    private UserService userService = UserService.getInstance();
    private OrderService orderService = OrderService.getInstance();
    private OrderStatusService orderStatusService = OrderStatusService.getInstance();
    private List<List> usersOrders;
    private List<Long> orderNumbers;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        usersOrders = new ArrayList<>();
        orderNumbers = new ArrayList<>();

        String username = (String) request.getSession().getAttribute("loggedInUser");
        Optional<User> optional = userService.getUserByName(username);

        if (!optional.isPresent()) {
            response.sendRedirect("user_create_order.jsp");
            return;
        }

        User user = optional.get();
        Map<Long, Map<String, Long>> ordersDetails = orderService.orderDetails(user.getUserName(), Order.Status.READY);
        if (!ordersDetails.isEmpty()) {
            for (Long number : ordersDetails.keySet()) {
                orderNumbers.add(number);
                List details = new ArrayList();
                details.add(number);
                details.add(ordersDetails.get(number));
                details.add(orderService.getOrderDAO().getById(number).get().getTotalSum());
                usersOrders.add(details);
            }
        }

        request.setAttribute("usersOrders", usersOrders);

        RequestDispatcher dispatcher = request.getRequestDispatcher("user_payment.jsp");
        if (dispatcher != null) {
            dispatcher.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("user_payment.jsp").include(request, response);


        System.out.println(orderNumbers);

        Boolean isConfirmButtonClicked = request.getParameter("Pay") != null;

        for (Long number : orderNumbers) {
            Boolean checked = request.getParameter(number.toString()) != null;
            if (checked) {
                if (isConfirmButtonClicked) {
                    orderStatusService.payOrder(number);
                }
            }
        }

        response.sendRedirect("user_done_orders");
    }
}