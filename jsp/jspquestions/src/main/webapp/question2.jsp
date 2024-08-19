<%-- JSP Lifecycle Example --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Lifecycle Example</title>
</head>
<body>
<%
    // Initialization
    Date initDate = new Date();
    application.setAttribute("initDate", initDate);
%>
<%
    // Execution
    Date execDate = new Date();
%>
<h1>JSP Lifecycle Example</h1>
<p>Initialization Date: <%= application.getAttribute("initDate") %></p>
<p>Execution Date: <%= execDate %></p>
</body>
</html>
