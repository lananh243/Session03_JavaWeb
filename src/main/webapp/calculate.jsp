        <%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/8/2025
  Time: 1:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="calculate.jsp" method="post">
        <label for="a">Nhập số thứ nhất: </label>
        <input type="number" name="a" id="a">
        <br><br>
        <label for="b">Nhập số thứ hai: </label>
        <input type="number" name="b" id="b">
        <br><br>
        <input type="submit" value="Cộng">
    </form>

    <%
        String a = request.getParameter("a");
        String b = request.getParameter("b");

        int result = 0;
        if (a != null && b != null) {
            int number1 = Integer.parseInt(a);
            int number2 = Integer.parseInt(b);

            result = number1 + number2;
        }
    %>

    <h3>Kết quả: <%=result%></h3>
</body>
</html>
