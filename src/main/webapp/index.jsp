<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Customer</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Add Customer</h2>
    <form action="CustomerControllerServlet" method="post">
        First Name: <input type="text" name="firstName"><br>
        Last Name: <input type="text" name="lastName"><br>
        Email: <input type="text" name="email"><br>
        <input type="submit" value="Add Customer">
    </form>
    
    
    
    <form action="viewCustomerServlet" method="get">
    	<input type="submit" value="Fetch Customer Data">
	</form>


</body>
</html>
