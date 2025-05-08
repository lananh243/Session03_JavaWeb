<%@ page import="com.example.session03_java.bai9.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        List<User> userList = (List<User>) request.getAttribute("userList");
        if (userList == null) {
            userList = new ArrayList<>();
        }
    %>

    <h1>Thêm Người Dùng</h1>
    <form action="UserServlet" method="post">
        <label for="name">Tên:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>
        <input type="submit" value="Thêm Người Dùng">
    </form>
    <h3>Danh sách người dùng</h3>
    <ul>
        <%
            for (User user : userList) {
        %>
        <li>
            Tên <%= user.getName() %> - Email: <%= user.getEmail() %>
            <form action="UserServlet" method="post" style="display:inline;">
                <input type="hidden" name="id" value="<%= user.getId() %>">
                <input type="submit" value="Xóa" onclick="return confirm('Bạn có chắc chắn muốn xóa không?');">
            </form>
        </li>
        <%
            }
        %>
    </ul>
</body>
</html>
