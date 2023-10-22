<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<th>Update</th>
				</tr>
			</thead>
			<tbody>
				<%
				List<Customer> customers = (List<Customer>) request.getAttribute("customers");
				if (customers != null && !customers.isEmpty()) {
					for (Customer cus : customers) {
				%>
				<tr>
					<td><%=cus.getId()%></td>
					<td><%=cus.getFirstName()%></td>
					<td><%=cus.getLastName()%></td>
					<td><%=cus.getEmail()%></td>
					<td><a
						href="<%=request.getContextPath()%>/deleteCustomerServlet?customerId=<%=cus.getId()%>"
						onclick="return confirm('Are you sure you want to delete this customer?');">delete</a></td>
					<td><a href="javascript:void(0);" onclick="editCustomer(<%=cus.getId()%>);">Update</a></td>
				</tr>
				<tr id="edit_<%=cus.getId()%>" style="display: none; class="edit">
						<form action="<%=request.getContextPath()%>/editCustomerServlet"
							method="post">
							<td><input name="" value="<%=cus.getId()%>" disabled>
							<input name="customerId" value="<%=cus.getId()%>" hidden = ""></td>
							<td><input type="text" name="firstName" value="<%=cus.getFirstName()%>"></td>
							<td><input type="text" name="lastName" value="<%=cus.getLastName()%>"></td>
							<td><input type="text" name="email" value="<%=cus.getEmail()%>"><br>
								<td></td>
							<td><input type="submit" value="Save"></td>
						</form>
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
	<script>
		function editCustomer(id) {
			var editForm = document.getElementById('edit_' + id);
			if (editForm.style.display === 'none') {
				editForm.style.display = 'table-row';
			} else {
				editForm.style.display = 'none';
			}
		}
	</script>

</body>
</html>
