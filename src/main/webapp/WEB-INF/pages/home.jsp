<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table class="table table-warning">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">FirstName</th>
      <th scope="col">LastName</th>
      <th scope="col">Email</th>
    </tr>
  </thead>
  <tbody>
      <c:forEach var="employee" items="${employess}">
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