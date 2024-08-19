<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
    <%
        // Get the username from the request
        String username = request.getParameter("username");
        
        // Store the username in the session
        session.setAttribute("username", username);
    %>
    <h2>Welcome, <%= username %>!</h2>
    <a href="profile.jsp">Go to Profile</a>
</body>
</html>
