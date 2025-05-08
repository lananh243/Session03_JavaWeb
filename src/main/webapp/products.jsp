<%@ page import="com.example.session03_java.bai10.Product" %>
<%@ page import="com.example.session03_java.bai10.CartManager" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 10:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        List<Product> products = List.of(
                new Product(1, "Trang sức", 6000000.0),
                new Product(2, "Iphone 15", 9000000.0),
                new Product(3, "Áo phông", 200000.0)
        );

        CartManager cartManager = (CartManager) session.getAttribute("cartManager");
        if (cartManager == null) {
            cartManager = new CartManager();
            session.setAttribute("cartManager", cartManager);
        }
    %>

    <h1>Sản phẩm có sẵn</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên sản phẩm</th>
                <th>Giá</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (Product product : products) {
            %>
            <tr>
                <td><%= product.getId()%></td>
                <td><%= product.getName()%></td>
                <td><%= product.getPrice()%></td>
                <td style="text-center">
                    <form action="addToCart.jsp" method="post">
                        <input type="hidden" name="id" value="<%= product.getId() %>">
                        <input type="submit" value="Thêm vào giỏ hàng">
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <br>
    <a href="cart.jsp">Xem giỏ hàng</a>
</body>
</html>
