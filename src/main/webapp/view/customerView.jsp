<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.customer.model.Customer"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer List</title>
    <link rel="stylesheet" type="text/css" href="view/css/viewCustomer.css">
</head>
<body>
    <div class="container">
        <h1>Customer List</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <%
                	
                    List<Customer> customers = (List<Customer>) request.getAttribute("customers");
                if (customers != null && !customers.isEmpty()) {
                    for (Customer cus : customers) {
                %>
                <tr>
                    <td><%= cus.getId() %></td>
                    <td><%= cus.getFirstName() %></td>
                    <td><%= cus.getLastName() %></td>
                    <td><%= cus.getEmail() %></td>
                    <td><a href = "<%=request.getContextPath()%>/deleteCustomerServlet?customerId=<%= cus.getId() %>">delete</a></td>
                </tr>
                <%
                    }
                    customers.clear();
                } else {
                %>
                <tr>
                    <td colspan="4">No Customers</td>
                </tr>
                <%
                	}
                %>
            </tbody>
        </table>
        <a class="add-customer-button" href="index.jsp">Add customer</a>
    </div>
</body>
</html>
