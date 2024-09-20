<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="css/style.css">

<meta charset="UTF-8">
<title>Employee Management System</title>
    
</head>
<body >
	
	
	<nav class="navbar">
  <div class="container-fluid">
    <h1 class="navbar-brand">Employee Relationship Management</h1>
      
      <a href="${pageContext.request.contextPath}/EmployeeDetails" class="btn btn-outline-success">Add Employee</a>
    </form>
  </div>
</nav>
	
	<table class="table">
  <thead>
    <tr class="table-warning">
      <th scope="col">id</th>
      <th scope="col">FirstName</th>
      <th scope="col">LastName</th>
      <th scope="col">Email</th>
    </tr>
  </thead>
  <tbody>
      <c:forEach var="employee" items="${employees}">
      <tr>
      <td>${employee.id}</td>
      <td>${employee.firstName}</td>
      <td>${employee.lastName}</td>
      <td>${employee.email}</td>
      </tr>
      </c:forEach>
  </tbody>
</table>

</body>
</html>