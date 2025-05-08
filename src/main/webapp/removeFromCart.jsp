<%@ page import="com.example.session03_java.bai10.CartManager" %><%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 10:39 AM
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
        CartManager cartManager = (CartManager) session.getAttribute("cartManager");
        if (cartManager != null) {
            cartManager.removeProduct(productId);
        }
        response.sendRedirect("cart.jsp");
    %>
</body>
</html>
