<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.customer.model.Customer"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer List</title>
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
                </tr>
            </thead>
            <tbody>
                <%
                    List<Customer> customers = (List<Customer>) request.getAttribute("customers");
                    for (Customer cus : customers) {
                %>
                <tr>
                    <td><%= cus.getId() %></td>
                    <td><%= cus.getFirstName() %></td>
                    <td><%= cus.getLastName() %></td>
                    <td><%= cus.getEmail() %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <a class="add-customer-button" href="add-customer.jsp">Add Customer</a>
    </div>
</body>
</html>
