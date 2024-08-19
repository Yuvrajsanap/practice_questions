<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.Locale" %>
<!DOCTYPE html>
<html>
<head>
    <title>Internationalization Example</title>
</head>
<body>
    <h1>Internationalization Example</h1>
    <form action="question20.jsp" method="post">
        Select Language:
        <select name="lang">
            <option value="en">English</option>
            <option value="fr">French</option>
        </select>
        <input type="submit" value="Change Language">
    </form>

    <%
        String lang = request.getParameter("lang");
        if (lang != null) {
            if (lang.equals("fr")) {
                session.setAttribute("locale", new Locale("fr", "FR"));
            } else {
                session.setAttribute("locale", new Locale("en", "US"));
            }
        }
    %>
<h1>Hello, welcome to our website!</h1>
    <fmt:setLocale value="${sessionScope.locale}" />
    <fmt:bundle basename="messages">
        <p><fmt:message key="greeting" /></p>
    </fmt:bundle>
</body>
</html>
