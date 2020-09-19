<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddMarks</title>
</head>
<body>
   <h2>Enter the Marks Details</h2>
    <form action="savemarks" method="post">
        STID : <input type="text" name="stid"><br>
        EXID: <input type="text" name="exid"><br>
        SUB1 : <input type="text" name="sub1"><br>
        SUB2 : <input type="text" name="sub2"><br>
        SUB3 : <input type="text" name="sub3"><br>
        <input type="submit" value="Add">&emsp;
        <input type="reset" value="Clear">
    </form>
</body>
</html>