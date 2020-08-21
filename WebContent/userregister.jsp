<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guru Registration Form</title>
</head>
<body>
<h1>New User Register Form</h1>
<form action="user?action=insertuser" method="post">
			<table style="with: 50%">
				<tr>
					<td>Full Name</td>
					<td><input type="text" value="${user.name}" name="name" required /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" value="${user.email}" name="email" required/></td>
				</tr>
				<tr>
					<td>UserName</td>
					<td><input type="text" value="${user.uname}" name="username" required/></td>
				</tr>
					<tr>
					<td>Password</td>
					<td><input type="password" value="${user.password }" name="password" required/></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" value="${user.contactNumber}" name="address" required/></td>
				</tr>
				<tr>
					<td>Contact No</td>
					<td><input type="text" value="${user.address}" name="contact" required/></td>
				</tr></table>
			<input type="submit" value="Submit" /></form>
</body>
</html>