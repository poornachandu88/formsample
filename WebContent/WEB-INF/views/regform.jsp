<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>${title}</title>
	</head>
	<body>
		<h2>Employee Registration</h2>
	
	
	
	<form action="${contextPath}/formsubmit" method="get">

		<table>
		     <tr>
				<td>Employee Id :</td>
				<td><input type="text" name="empid" required="required"></td>
			</tr>
			<tr>
				<td>Employee Name:</td>
				<td><input type="text" name="empname" required="required"></td>
			</tr>
			
			<tr>
				<td>Employee D.O.B:</td>
				<td><input type="text" name="empdob" required="required"></td>
			</tr>
			<tr>
				<td>Employee Qualification :</td>
				<td><select name="empqualification" required="required">
						<option value="btech">B.Tech</option>
						<option value="bsc">B.Sc</option>
						<option value="mca">M.C.A</option>
						<option value="mtech">M.Tech</option>
				</select></td>
			</tr>
			<tr>
				<td>Employee SALARY :</td>
				<td><input type="text" name="empsalary" required="required"></td>
			</tr>
			<tr>
				<td>Employee ADDRESS :</td>
				<td><input type="text" name="empaddress" required="required"></td>
			</tr>


			<tr>
				<td><input type="submit" value="submit"></td>
			</tr>
		</table>

	</form>

	</body>
</html>