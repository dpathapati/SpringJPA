<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StudentDetails</title>
</head>
<body>
   <h2 align="center">Welcome</h2>
   <table border='1' align='center'>
       <tr>
          <th>ID</th>
          <th>NAME</th>
          <th>DOB</th>
          <th>EMAIL</th>
          <th>MOBILE</th>
          <th>EDIT/DELETE</th>
       
       </tr>
       <c:forEach var="student" items="${stud}" >
			<tr>
				<fmt:formatDate var="date" value="${student.dob}" pattern="dd-MM-yyyy" />
				<td>${student.id}</td>
				<td>${student.name}</td>
				<td>${date}</td>
				<td>${student.email}</td>
				<td>${student.mobile}</td>
				<td><a href='editstudent?id=${student.id}'>Edit</a>/<a href='studentdelete?id=${student.id}'>Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br><a href="addstudent" >Add New Student</a><br><br>
	<a href="modules">Go back</a>
          
   </table>
</body>
</html>