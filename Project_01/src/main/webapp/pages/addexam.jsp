<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddExam</title>
</head>
<body>
   <h2>Enter the Exam Details</h2>
   <form action="examsave" method="post">
        ID : <input type="text" name="id"><br>
        Name: <input type="text" name="name"><br>
        <input type="submit" value="Add">&emsp;
        <input type="reset" value="Clear">
    </form>
</body>
</html>