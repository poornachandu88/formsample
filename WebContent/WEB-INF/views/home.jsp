<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



<meta name="viewport" content="width=device-width, initial-scale=1">


<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
</style>











<title>${title}</title>
</head>
<body>

<!-- nav bar -->

<div class="topnav">
  <a class="active" href="${contextPath}/home">Home</a>
  <a href="${contextPath}/regform">New Employee Registration</a>
  <a href="${contextPath}/listofemp">List Of Employee</a>
</div>


<!-- page content -->


	<h2 style="color: purple;">ALL EMPLOYEES INFORMATION</h2>
	
	<c:if test="${UserClickForm==true}">

		<%@include file="regform.jsp"%>

	</c:if>


	<c:if test="${UserClickEmployeeList==true}">

		<%@include file="emplist.jsp"%>

	</c:if>

<c:if test="${UserClickForm==true}">

		<%@include file="success.jsp"%>

	</c:if>
	
	<c:if test="${UserClickEditEmployee==true||FormUpdateSuccess==true}">

		<%@include file="modifysubmit.jsp"%>

	</c:if>
	
	<c:if test="${UserClickModifyEmployee==true}">

		<%@include file="modify.jsp"%>

	</c:if>
	<c:if test="${UserClickDeleteEmployee==true}">

		<%@include file="modify.jsp"%>

	</c:if>
	

</body>
</html>