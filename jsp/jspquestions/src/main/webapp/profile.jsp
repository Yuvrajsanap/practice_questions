<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Profile Page</title>
</head>
<body>
    <%
        // Check if the session exists
        if (session == null) {
            out.println("No session found. Please login first.");
        } else {
            // Retrieve the username from the session
            String username = (String) session.getAttribute("username");
            if (username != null) {
                out.println("<h2>Profile Page</h2>");
                out.println("<p>Name: " + username + "</p>");
            } else {
                out.println("No user data found in session.");
            }
        }
    %>
    <a href="logout.jsp">Logout</a>
</body>
</html>
