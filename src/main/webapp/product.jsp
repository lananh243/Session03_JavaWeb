<%@ page import="com.example.session03_java.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 1:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h4>Quản Lý Sản Phẩm</h4>
    <b>Thêm Sản Phẩm</b>
    <form action="product.jsp" method="post">

        <label for="productName">Tên sản phẩm</label><br>
        <input type="text" name="productName" id="productName" required><br>

        <label for="price">Giá</label><br>
        <input type="number" name="price" id="price" required><br>

        <label for="description">Mô tả</label><br>
        <input type="text" name="description" id="description" required><br>

        <label for="stock">Số lượng</label><br>
        <input type="number" name="stock" id="stock" required><br>

        <label for="status">Trạng thái</label><br>
        <select name="status" id="status" required>
            <option value="">--- Chọn trạng thái ---</option>
            <option value="true">Còn hàng</option>
            <option value="false">Hết hàng</option>
        </select>
        <br><br>
        <input type="submit" value="Thêm sản phẩm">
    </form>

    <%
        List<Product> productList = (List<Product>) application.getAttribute("productList");
        if (productList == null) {
            productList = new ArrayList<>();
        }

        if ("POST".equalsIgnoreCase(request.getMethod())) {
            int id = productList.size() + 1;
            String productName = request.getParameter("productName");
            double price = Double.parseDouble(request.getParameter("price"));
            String description = request.getParameter("description");
            int stock = Integer.parseInt(request.getParameter("stock"));
            boolean status = Boolean.parseBoolean(request.getParameter("status"));

            Product newProduct = new Product(id, productName, price, description, stock, status);
            productList.add(newProduct);

            application.setAttribute("productList", productList);
        }
    %>

    <b>Danh sách sản phẩm đã thêm: </b>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên sản phẩm</th>
                <th>Giá</th>
                <th>Mô tả</th>
                <th>Số lượng</th>
                <th>Trạng thái</th>
            </tr>
        </thead>
        <tbody>
            <%
                NumberFormat currencyFormat = NumberFormat.getInstance(new Locale("vi", "VN"));
                for (Product product : productList) {
                    String formattedPrice = currencyFormat.format(product.getPrice());
            %>
            <tr>
                <td><%= product.getId() %></td>
                <td><%= product.getProductName() %></td>
                <td><%= formattedPrice %> đ</td>
                <td><%= product.getDescription() %></td>
                <td><%= product.getStock() %></td>
                <td><%= product.isStatus() ? "Còn hàng" : "Hết hàng" %></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</body>
</html>
