<%@ page isErrorPage="true" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Error Page</title>
</head>
<body>
    <h1>An error occurred: <%= exception.getMessage() %></h1>
    <a href="question9.jsp">Go back</a>
</body>
</html>
