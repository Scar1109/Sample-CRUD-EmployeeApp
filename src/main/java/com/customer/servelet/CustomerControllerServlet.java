package com.customer.servelet;

import javax.servlet.*;
import javax.servlet.http.*;

import com.customer.model.Customer;
import com.customer.utill.CustomerDbUtil;

import java.io.IOException;

public class CustomerControllerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");

        Customer customer = new Customer();
        customer.setFirstName(firstName);
        customer.setLastName(lastName);
        customer.setEmail(email);

        CustomerDbUtil.addCustomer(customer);

        // Redirect to a success page or show a success message
        response.sendRedirect("success.jsp");
    }
}
