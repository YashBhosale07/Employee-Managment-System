<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Employee List</h1>
		
		<c:forEach var="employee" items="${employees}">
			<h3>${employee.id}</h3>
			<h3>${employee.firstName}</h3>
			<h3>${employee.lastName}</h3>
			<h3>${employee.email}</h3>
			<br/>
		</c:forEach>
		
		
	</center>
</body>
</html>