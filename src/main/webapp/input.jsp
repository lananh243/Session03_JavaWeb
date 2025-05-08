<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Thêm Người Dùng</h1>
    <form action="UserServlet" method="post">
      <label for="name">Tên:</label>
      <input type="text" id="name" name="name" required><br>
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required><br>
      <input type="submit" value="Thêm Người Dùng">
    </form>
</body>
</html>
