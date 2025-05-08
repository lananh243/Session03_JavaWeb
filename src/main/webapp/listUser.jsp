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
    <input type="hidden" name="action" value="add">
    <label for="name">Tên:</label>
    <input type="text" id="name" name="name" required><br><br>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br><br>
    <input type="submit" value="Thêm Người Dùng">
</form>

<h3>Danh sách người dùng</h3>
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Email</th>
            <th>Hành động</th>
        </tr>
    </thead>
    <tbody>
        <%
            for (User user : userList) {
        %>
            <tr>
                <td><%= user.getId()%></td>
                <td><%= user.getName()%></td>
                <td><%= user.getEmail()%></td>
                <td>
                    <form action="UserServlet" method="post" style="display:inline;">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="id" value="<%= user.getId() %>">
                        <input type="submit" value="Xóa" onclick="return confirm('Bạn có chắc chắn muốn xóa không?');">
                    </form>
                </td>
            </tr>
        <%
            }
        %>
    </tbody>
</table>
</body>
</html>
