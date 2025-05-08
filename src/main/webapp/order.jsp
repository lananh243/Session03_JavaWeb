        <%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>        <%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 2:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Form</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
    <div class="bg-white p-9 rounded-lg shadow-lg w-96 m-auto mt-20">
        <h1 class="text-2xl font-bold text-center mb-6">Order Form</h1>
        <form action="order.jsp" method="post">
            <div class="mb-4">
                <label for="product" class="block text-sm font-medium text-gray-700">Product</label>
                <input type="text" id="product" name="product" class="p-2 mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring-blue-500 focus:border-blue-500">
            </div>

            <div class="mb-4">
                <label for="quantity" class="block text-sm font-medium text-gray-700">Quantity</label>
                <input type="number" id="quantity" name="quantity" min="0" class="p-2 mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring-blue-500 focus:border-blue-500">
            </div>

            <div class="mb-4">
                <label for="price" class="block text-sm font-medium text-gray-700">Price per Unit</label>
                <input type="text" id="price" name="price" class="p-2 mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring-blue-500 focus:border-blue-500">
            </div>

            <button type="submit" class="w-full bg-blue-500 text-white font-bold py-2 rounded-md hover:bg-blue-600">Submit</button>
        </form>
    </div>

    <%
        double total = 0;
        String formattedPrice = null;
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String product = request.getParameter("product");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            double pricePerUnit = Double.parseDouble(request.getParameter("price"));

            NumberFormat currencyFormat = NumberFormat.getInstance(new Locale("vi", "VN"));
            total = quantity * pricePerUnit;
            formattedPrice = currencyFormat.format(total);

        }
    %>

    <div class="mt-10 text-center">
        <h2 class="text-lg font-bold">Tổng giá trị đơn hàng: <%=formattedPrice%> VNĐ</h2>
    </div>
</body>
</html>
