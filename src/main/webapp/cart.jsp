<%@ page import="com.example.session03_java.bai10.CartManager" %>
<%@ page import="com.example.session03_java.bai10.Product" %><%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 10:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        CartManager cartManager = (CartManager) session.getAttribute("cartManager");
    %>
    <h1>Giỏ hàng của bạn</h1>
    <ul>
        <%
            if (cartManager != null && !cartManager.getCart().isEmpty()) {
                for (Product product : cartManager.getCart()) {
        %>
        <li>
            <%= product.getName() %> - <%= product.getPrice() %> VND
            <form action="removeFromCart.jsp" method="post">
                <input type="hidden" name="id" value="<%= product.getId() %>">
                <input type="submit" value="Xóa">
            </form>
        </li>
        <%
            }
        %>
        <li>Tổng giá trị: <%= cartManager.getTotalPrice() %> VND</li>
        <%
        } else {
        %>
        <li>Giỏ hàng trống.</li>
        <%
            }
        %>
    </ul>
    <a href="products.jsp">Quay lại sản phẩm</a>
</body>
</html>
