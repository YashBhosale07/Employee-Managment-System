<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Details Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="css/form.css">
</head>
<body>
<h1>Employee Details Form</h1>
 <div class="container mt-5 border border-dark-subtle">
    
    <form:form modelAttribute="emp">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label pt-4">FirstName</label>
    <form:input path="firstName" class="form-control"  aria-describedby="emailHelp"/>
    
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">LastName</label>
    <form:input path="lastName" class="form-control"/>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Email</label>
    <form:input path="email" class="form-control"/>
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <button type="submit" class="btn btn-primary mb-4">Submit</button>

    </form:form>
    </div>
</body>
</html>
