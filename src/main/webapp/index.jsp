<!DOCTYPE html>
<html>
<head>
    <title>JSP Demo</title>
</head>
<body>
    <h1>Hello, JSP!</h1>
    <p>This is a simple JSP demo page.</p>

    <%-- JSP 中可以嵌入 Java 代码 --%>
    <%
        String message = "Today is " + new java.util.Date();
        out.println("<p>" + message + "</p>");
    %>
</body>
</html>