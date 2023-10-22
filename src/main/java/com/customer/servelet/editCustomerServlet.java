package com.customer.servelet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.model.Customer;
import com.customer.utill.CustomerDBUtill;

import java.io.IOException;

@WebServlet("/editCustomerServlet")
public class editCustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        
        Customer cus = new Customer(customerId,firstName,lastName,email);

        CustomerDBUtill.updateCustomer(cus);

        response.sendRedirect("viewCustomerServlet");
    }
}
