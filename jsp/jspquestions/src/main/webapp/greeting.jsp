<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Greeting Page</title>
</head>
<body>
<h1>Greeting Page</h1>

<form action="greeting.jsp" method="get">
    <label for="name">Enter your name:</label>
    <input type="text" id="name" name="name" required>
    <input type="submit" value="Greet Me">
</form>

<% 
    String name = request.getParameter("name");
    if (name != null && !name.isEmpty()) {
        out.println("<h2>Hello, " + name + "!</h2>");
    }
%>

</body>
</html>
