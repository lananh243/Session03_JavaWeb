<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/7/2025
  Time: 4:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="result.jsp" method="post">
    <label for="username">UserName</label>
    <input type="text" name="username" id="username">
    <br><br>
    <label for="password">Password</label>
    <input type="password" name="password" id="password">
    <br><br>
    <label for="age">Age</label>
    <input type="number" name="age" id="age">
    <br><br>
    <input type="submit" value="LOGIN">
</form>

<%
    String err = request.getParameter("err");
    if (err != null && err.equals("info_incorrect")) {
        out.print("<p style='color:red'>Username or password not correct</p>");
    }
%>
</body>
</html>
