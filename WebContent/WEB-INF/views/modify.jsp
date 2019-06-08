<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring MVC Form Handling</title>
	</head>
	<body>
		<h2 style="color: orange;">MODIFY Employee Data</h2>
	
	
	<c:if test="${UserClickEmployeeList==true}">

		<%@include file="modifysubmit.jsp"%>

	</c:if>
	
	
				  <c:if test="${!empty employees}">
		<h2>List Employees</h2>
	<table align="left" border="1">
		<tr>
			<th>Employee Id</th>
			<th>Employee Name</th>
			<th>Employee DOB</th>
			<th>Employee Qualification</th>
			<th>Employee Salary</th>
			<th>Employee Address</th>
			<th style="background: red">MODIFICATIONS HERE</th>
		</tr>

		<c:forEach items="${employees}" var="employee">
			<tr>
				<td><c:out value="${employee.id}"/></td>
				<td><c:out value="${employee.name}"/></td>
				<td><c:out value="${employee.dob}"/></td>
				<td><c:out value="${employee.qualification}"/></td>
				<td><c:out value="${employee.salary}"/></td>
				<td><c:out value="${employee.address}"/></td>
				<td align="center"><a href="${contextPath}/edit/${employee.id}">Edit</a> | <a href="${contextPath}/delete/${employee.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>