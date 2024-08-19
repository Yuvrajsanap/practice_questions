<%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Exception Page</title>
</head>
<body>
    <h2>This page will throw an exception</h2>
    <%
        // Deliberately throw an exception
        throw new Exception("Deliberate Exception Thrown");
    %>
</body>
</html>
