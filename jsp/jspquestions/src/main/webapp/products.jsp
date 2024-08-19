<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
</head>
<body>
<%
    List<Product> products = new ArrayList<>();
    products.add(new Product("Laptop", true));
    products.add(new Product("Tablet", false));
    products.add(new Product("Smartphone", true));
    request.setAttribute("products", products);
%>
    <h1>Available Products</h1>
    <ul>
        <c:forEach var="product" items="${products}">
            <c:if test="${product.inStock}">
                <li>${product.name}</li>
            </c:if>
        </c:forEach>
    </ul>
</body>
</html>

<%! 
public class Product {
    private String name;
    private boolean inStock;

    public Product(String name, boolean inStock) {
        this.name = name;
        this.inStock = inStock;
    }

    public String getName() {
        return name;
    }

    public boolean isInStock() {
        return inStock;
    }
}
%>
