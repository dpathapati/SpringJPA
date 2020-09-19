<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ExamDisplay</title>
</head>
<body>
   <h2 align="center">Welcome</h2>
   <table border='1' align='center'>
       <tr>
          <th>ID</th>
          <th>NAME</th>
          <th>EDIT/DELETE</th>
       
       </tr>
       <c:forEach var="exam" items="${ex}" >
			<tr>
				<td>${exam.id}</td>
				<td>${exam.name}</td>
				<td><a href='editexam?id=${exam.id}'>Edit</a>/<a href='examdelete?id=${exam.id}'>Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br><a href="addexam" >Add New Exam</a><br><br>
	<a href="modules">Go back</a>
          
   </table>
</body>
</html>