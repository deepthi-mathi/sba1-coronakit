<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-Home</title>
</head>
<body>
	<div>
		<jsp:include page="header.jsp" />
		<hr />
		<h2>Admin Login</h2>
	
 <form action="admin?action=login" method="post">
			<div>
				<div>
					<label for="loginid">Enter login Id</label>
				</div>
				<div>
					<input type="text" id="loginid" name="loginid">
					
				</div>
			</div>
			<div>
				<div>
					<label for="password">Enter password</label>
				</div>
				<div>
					<input type="text" id="password" name="password">
				</div>
			</div>
			<div>
				<div>
					<input type="submit" value="Login">
				</div>
			</div>
		</form>
		
	</div>
	<hr />
	<div>
		<a href="user?action=newuser"><button>New User Register</button></a>
		<a href="userlogin.jsp"><button>Existing user</button></a>
	</div>
	<hr />


	<jsp:include page="footer.jsp" />
</body>
</html>