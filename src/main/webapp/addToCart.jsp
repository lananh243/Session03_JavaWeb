<%@ page import="com.example.session03_java.bai10.CartManager" %>
<%@ page import="com.example.session03_java.bai10.Product" %><%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int productId = Integer.parseInt(request.getParameter("id"));
    // Tạo sản phẩm theo ID
    Product product = null;
    switch (productId) {
        case 1: product = new Product(1, "Trang sức", 6000000.0); break;
        case 2: product = new Product(2, "Iphone 15", 9000000.0); break;
        case 3: product = new Product(3, "Áo phông", 200000.0); break;
    }

    // Thêm sản phẩm vào giỏ hàng
    CartManager cartManager = (CartManager) session.getAttribute("cartManager");
    if (cartManager != null && product != null) {
        cartManager.addProduct(product);
    }
    response.sendRedirect("products.jsp");
%>
</body>
</html>
