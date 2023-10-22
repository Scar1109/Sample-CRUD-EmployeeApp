package com.customer.servelet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.model.Customer;
import com.customer.utill.CustomerDBUtill;

  
@WebServlet(urlPatterns = "/CustomerControllerServlet", name = "CustomerControllerServlet")

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

        CustomerDBUtill.addCustomer(customer);

        // Redirect to a success page or show a success message
        response.sendRedirect("success.jsp");
    }
}
