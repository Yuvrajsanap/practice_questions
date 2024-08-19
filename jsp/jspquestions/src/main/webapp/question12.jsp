
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Item List</title>
</head>
<body>
    <h1>Items List</h1>
    <c:set var="items" value="${['Apple', 'Banana', 'Cherry']}" />
    <table border="1">
        <tr>
            <th>Item</th>
        </tr>
        <c:forEach var="item" items="${items}">
            <tr>
                <td>${item}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
