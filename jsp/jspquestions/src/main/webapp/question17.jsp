<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Database Records</title>
</head>
<body>
<%
    String url = "jdbc:mysql://localhost:3306/Assignment9_db";
    String user = "root";
    String password = "Yuvraj@12345";
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        stmt = conn.createStatement();
        String sql = "SELECT * FROM cricket";
        rs = stmt.executeQuery(sql);

        out.println("<table border='1'>");
        out.println("<tr><th>ID</th><th>Name</th></tr>");
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            out.println("<tr><td>" + id + "</td><td>" + name + "</td></tr>");
        }
        out.println("</table>");
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>
