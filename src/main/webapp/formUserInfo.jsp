<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 12:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="display.jsp" method="post">
    <label for="name">Tên người dùng: </label>
    <input type="text" name="name" id="name">
    <br><br>
    <label for="email">Email: </label>
    <input type="email" name="email" id="email">
    <br><br>
    <input type="submit" value="Gửi">
</form>
</body>
</html>
