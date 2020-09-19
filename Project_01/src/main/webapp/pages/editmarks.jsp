<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditMarks</title>
</head>
<body>
   <form action="updatemarks" method="post">
       <h2>Update Student Details "<%=request.getParameter("stid") %>" "<%=request.getParameter("exid") %>"</h2>
      
       STId : <input type="text" value="<%=request.getParameter("stid") %>" readonly="readonly" name="stid"><br>
       EXID : <input type="text" value="<%=request.getParameter("exid") %>" readonly="readonly" name="exid"><br>
       Sub1 : <input type="text" name="sub1"><br>
       Sub2 : <input type="text" name="sub2"><br>
       Sub3 : <input type="text" name="sub3"><br>
       <input type="submit" value="Submit">&emsp;
       <input type="reset" value="Cancel">
    </form>
</body>
</html>