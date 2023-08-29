<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5"> 
			<%-- Display success message --%>
			<% String successMessage = (String) session.getAttribute("successMessage"); %>
			<% if (successMessage != null) { %>
			<div class="alert alert-success">
			    <%=successMessage %>
			</div>
			<% session.removeAttribute("successMessage"); %>
			<% } %>
			
			
   
    <div class="row">
	    <div class="col-3">
	    </div>
	    <div class="col">
	     <h2>Registration</h2>
		  <form action="RegistrationServlet" method="post">
	        <div class="form-group">
	            <label for="username">Username:</label>
	            <input type="text" class="form-control" id="username" name="username" placeholder="Enter username">
	        </div>
	        <div class="form-group">
	            <label for="email">Email:</label>
	            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
	        </div>
	        <div class="form-group">
	            <label for="password">Password:</label>
	            <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
	        </div>
	        <button type="submit" class="btn btn-primary">Register</button>
	    </form>	    
	    </div>
	    <div class="col-3">
	    </div>
    
    </div>
</div>

</body>
</html>
