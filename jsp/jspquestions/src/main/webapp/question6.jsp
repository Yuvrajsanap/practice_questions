<%-- JSP Implicit Objects Example --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects Example</title>
</head>
<body>
<h1>Implicit Objects Example</h1>
<p>Request URI: <%= request.getRequestURI() %></p>
<p>Session ID: <%= session.getId() %></p>
<p>Application Context Path: <%= application.getContextPath() %></p>
<p>Response Content Type: <%= response.getContentType() %></p>
</body>
</html>
