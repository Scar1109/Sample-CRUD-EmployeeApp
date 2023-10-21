package com.customer.servelet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.model.Customer;
import com.customer.utill.viewCustomerDBUtill;

@WebServlet("/viewCustomerServlet")
public class viewCustomerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve customer data from the database using a DAO class
    	viewCustomerDBUtill customerDao = new viewCustomerDBUtill();
        List<Customer> customers = customerDao.getAllCustomers();

        
        // Pass the customer data to the JSP view
        request.setAttribute("customers", customers);
        request.getRequestDispatcher("view/customerView.jsp").forward(request, response);
    }
}
