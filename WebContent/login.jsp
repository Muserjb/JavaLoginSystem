<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

<div class="container m-5">
     <div class="row">
	    <div class="col"></div>
	     <div class="col">
		     <h2>Login</h2>
	    
	   		 <%-- Display success message --%>
			<% String successMessage = (String) session.getAttribute("successMessage"); %>
			<% if (successMessage != null) { %>
			<div class="alert alert-success">
			    <%=successMessage %>
			</div>
			<% session.removeAttribute("successMessage"); %>
			<% } %>
			
			<%-- Display error message --%>
			<% String errorMessage = (String) session.getAttribute("errorMessage"); %>
			<% if (errorMessage != null) { %>
			<div class="alert alert-danger">
			    <%= errorMessage %>
			</div>
			<% session.removeAttribute("errorMessage"); %>
			<% } %>
		     <form action="login" method="post">
		        <div class="form-group">
		            <label for="username">Username:</label>
		            <input type="text" class="form-control" id="username" name="username" placeholder="Enter username">
		        </div>
		        <div class="form-group">
		            <label for="password">Password:</label>
		            <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
		        </div>
		        <button type="submit" class="btn form-control btn-primary">Login</button>
		       </form>
		     <br><br>
		        <a href="submit" class="btn form-control btn-dark">forgot password</a><br>
		        <p>Don`t have an account? Click <a href="registration.jsp" class="btn  btn">here </a>to register</p>
		    
	     </div>
	      <div class="col"></div>
    </div>
</div>

</body>
</html>
