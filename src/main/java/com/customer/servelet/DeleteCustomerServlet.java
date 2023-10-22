package com.customer.servelet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.utill.CustomerDBUtill;


@WebServlet("/deleteCustomerServlet")
public class DeleteCustomerServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        
        // Call the service to delete the customer
        boolean success = CustomerDBUtill.deleteCustomer(customerId);

        if (success) {
            // Customer deleted successfully
            response.sendRedirect(request.getContextPath() + "/viewCustomerServlet"); // Redirect to the customer list page
        } else {
            // Handle the case where the customer couldn't be deleted
            // You can set an error message or perform other actions here
        }
    }
}
