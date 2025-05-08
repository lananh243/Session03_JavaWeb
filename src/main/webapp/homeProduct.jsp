<%@ page import="com.example.session03_java.bai8.Book" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 9:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        List<Book> bookList = (List<Book>) request.getAttribute("bookList");
        if (bookList == null) {
            bookList = new ArrayList<>();
        }
    %>
    <h3>Quản lý sách</h3>
    <form action="BookServlet" method="post">
        <label for="title">Tên sách: </label>
        <input type="text" name="title" id="title">
        <br><br>
        <label for="author">Tác giả: </label>
        <input type="text" name="author" id="author">
        <br><br>
        <label for="year">Năm xuất bản</label>
        <input type="number" name="year" id="year">
        <br><br>
        <input type="submit" value="Thêm mới">
    </form>

    <h3>Danh sách sách</h3>
    <table border="1">
        <thead>
            <tr>
                <th>Tên sách</th>
                <th>Tác giả</th>
                <th>Năm xuất bản</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (Book book: bookList) {
            %>
                <tr>
                    <td><%= book.getTitle()%></td>
                    <td><%= book.getAuthor()%></td>
                    <td><%= book.getYear()%></td>
                </tr>
            <%
                }
            %>

        </tbody>
    </table>

    <h3>Tìm kiếm sách</h3>
    <form action="BookServlet" method="get">
        <label for="searchTitle">Tên Sách:</label>
        <input type="text" id="searchTitle" name="searchTitle">
        <input type="submit" value="Tìm Kiếm">
    </form>
</body>
</html>
