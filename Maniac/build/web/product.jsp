<%-- 
    Document   : product
    Created on : Mar 18, 2025, 6:27:00 AM
    Author     : Admin
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products - Maniac</title>
</head>
<body>
    <h2>Products</h2>
    <table border="2px">
        <tr>
            <th>Product Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Category</th>
        </tr>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.productName}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td>${product.categoryID}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

