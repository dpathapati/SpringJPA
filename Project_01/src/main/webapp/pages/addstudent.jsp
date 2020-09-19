<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddStudent</title>
</head>
<body>
    <h2>Enter the Student Details</h2>
    <form action="save" method="post">
        ID : <input type="text" name="id"><br>
        Name: <input type="text" name="name"><br>
        Dob : <input type="text" name="dob"><br>
        Email : <input type="text" name="email"><br>
        Mobile : <input type="text" name="mobile"><br>
        <input type="submit" value="Add">&emsp;
        <input type="reset" value="Clear">
    </form>
</body>
</html>