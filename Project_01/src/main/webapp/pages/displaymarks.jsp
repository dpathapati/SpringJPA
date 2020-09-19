<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MarksDisplay</title>
</head>
<body>
    <h2 align="center">Welcome</h2>
   <table border='1' align='center'>
       <tr>
          <th>STID</th>
          <th>EXID</th>
          <th>SUB1</th>
          <th>SUB2</th>
          <th>SUB3</th>
          <th>EDIT/DELETE</th>
       
       </tr>
       <c:forEach var="marks" items="${mark}" >
				<td>${marks.stid}</td>
				<td>${marks.exid}</td>
				<td>${marks.sub1}</td>
				<td>${marks.sub2}</td>
				<td>${marks.sub3}</td>
				<td><a href='editmarks?stid=${marks.stid}'>Edit</a>/<a href='marksdelete?stid=${marks.stid}'>Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br><a href="addmarks" align="center">Add New Marks</a><br><br>
	<a href="modules" align="center">Go back</a>
          
   </table>
</body>
</html>