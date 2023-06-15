<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<%--why does data-bs-theme not work?--%>
<html data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
</head>
<body class="container">
    <h1 class="text-danger mt-2 mb-4 fw-bold">Fruit Store</h1>
    <div class="border border-5 border-danger">
        <table class="table border-danger">
            <tr>
                <th>Name</th>
                <th>Price</th>
            </tr>
            <c:forEach var="fruit" items="${fruits}">
                <tr>
                    <td><c:out value="${fruit.name}"/></td>
                    <td><c:out value="${fruit.price}"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
