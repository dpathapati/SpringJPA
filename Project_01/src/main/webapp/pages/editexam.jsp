<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditExam</title>
</head>
<body>
    <form action="examupdate" method="post">
       <h2>Update Exam Details "<%=request.getParameter("id") %>" </h2>
       
       Id : <input type="text" value="<%=request.getParameter("id") %>" readonly="readonly" name="id"><br>
       Name : <input type="text" name="name"><br>
       <input type="submit" value="Submit">&emsp;
       <input type="reset" value="Cancel">
    </form>
</body>
</html>