<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditStudent</title>
</head>
<body>
    
    <form action="update" method="post">
       <h2>Update Student Details "<%=request.getParameter("id") %>" </h2>
       <% request.setAttribute("id", request.getParameter("id")); %>
       Id : <input type="text" value="<%=request.getParameter("id") %>" readonly="readonly" name="id"><br>
       Name : <input type="text" name="name"><br>
       Dob : <input type="text" name="dob"><br>
       Email : <input type="text" name="email"><br>
       Mobile : <input type="text" name="mobile"><br>
       <input type="submit" value="Submit">&emsp;
       <input type="reset" value="Cancel">
    </form>
</body>
</html>