<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="question15.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Throw Error</title>
</head>
<body>
    <h1>Throwing an exception...</h1>
    <%
        throw new RuntimeException("This is a deliberate exception");
    %>
</body>
</html>
