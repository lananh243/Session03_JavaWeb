<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 1:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
      String name = request.getParameter("name");
      String email = request.getParameter("email");
      String password = request.getParameter("password");


    %>

    <h1>Xác Nhận Đăng Ký</h1>
    <p>Cảm ơn bạn, <strong><%= name %></strong>! Bạn đã đăng ký thành công.</p>
    <p>Email: <%= email %></p>
    <p>Mật khẩu: <%= password %></p>
</body>
</html>
