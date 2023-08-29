<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<a href="LogoutServlet" class="btn btn-danger">Logout</a>



 			<%-- Display success message --%>
			<% String successMessage = (String) session.getAttribute("successMessage"); %>
			<% if (successMessage != null) { %>
			<div class="alert alert-success">
			    <%=successMessage %>
			</div>
			<% session.removeAttribute("successMessage"); %>
			<% } %>
			
			
			
			
			
<h1>Welcome to dashboard page</h1>



</body>
</html>