
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>


<title>${username}-Manage</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<hr />

	Welcome  ! Manage your products
	<nav>
		<a href="index.jsp">Home</a> 
		<span>|</span> 
		<a href="user?action=showproducts">Show All products</a> 
		<span>|</span>
		<a href="user?action=showkit">Show kit</a> 
		<span>|</span>
		<a href="user?action=ordersummary">ordersummary</a> 
		<span>|</span> 
		<a href="admin?action=logout">Logout</a>
	</nav>

	<hr />
	<jsp:include page="footer.jsp" />
</body>
</html>