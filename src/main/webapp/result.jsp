<%--
  Created by IntelliJ IDEA.
  User: Lan Anh
  Date: 5/7/2025
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String strAge = (String) request.getParameter("age");
        Integer age = Integer.parseInt(strAge);

        if (username.equals("admin") && password.equals("123")){
//            3 cách session, request, application
            application.setAttribute("username", username);
            if (age >= 18) {
                response.sendRedirect("adult.jsp");
            } else {
                response.sendRedirect("teen.jsp");
            }
        } else {
            response.sendRedirect("login.jsp?err=info_incorrect");
        }
    %>
</body>
</html>
