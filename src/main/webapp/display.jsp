<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 12:59 AM
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

        application.setAttribute("name", name);
        application.setAttribute("email", email);

    %>
    <h1>Thông Tin Của Người Dùng</h1>
    <p>Họ và tên: <%= application.getAttribute("name") %></p>
    <p>Email: <%= application.getAttribute("email") %></p>
</body>
</html>
