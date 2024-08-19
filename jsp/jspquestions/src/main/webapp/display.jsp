<!DOCTYPE html>
<html>
<head>
    <title>Display User Details</title>
</head>
<body>
    <h2>User Details</h2>
    <p><strong>Name:</strong> <%= request.getParameter("name") %></p>
    <p><strong>Email:</strong> <%= request.getParameter("email") %></p>
    <p><strong>Age:</strong> <%= request.getParameter("age") %></p>
</body>
</html>
