<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 1:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="confirm.jsp" method="post">
        <label for="name">Tên người dùng: </label>
        <input type="text" name="name" id="name">
        <br><br>
        <label for="password">Mật khẩu: </label>
        <input type="password" name="password" id="password">
        <br><br>
        <label for="email">Email: </label>
        <input type="email" name="email" id="email">
        <br><br>
        <input type="submit" value="REGISTER">
    </form>
</body>
</html>
