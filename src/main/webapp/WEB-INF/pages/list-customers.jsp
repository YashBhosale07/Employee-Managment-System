<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Employee Management</a>
        <div class="d-flex">
            <button onclick="window.location.href='./EmployeeDetails'; return false;" class="btn btn-outline-light">Add Employee</button>
        </div>
    </div>
</nav>

<!-- Page Heading -->
<div class="container mt-4">
    <div class="row">
        <div class="col-md-12 text-center">
            <h1 class="display-4">Employee Relationship Management</h1>
            <p class="lead">Manage all your employees efficiently</p>
        </div>
    </div>
</div>

<!-- Employee Table -->
<div class="container mt-5">
    <table class="table table-striped table-bordered text-center">
        <thead class="table-dark">
            <tr>
                
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Email</th>
                <th scope="col">Operations</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employee" items="${employees}">
                <tr>
                    
                    <td>${employee.firstName}</td>
                    <td>${employee.lastName}</td>
                    <td>${employee.email}</td>
                    <td>
                        <a href="<c:url value='/employee/updateEmployee?id=${employee.id}'/>" class="btn btn-success btn-sm">Update</a>
                        <a href="<c:url value='/employee/deleteEmployee?id=${employee.id}'/>" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
