<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../header.jsp" />
<div class="bs-example" data-example-id="condensed-table">
    <table class="table table-bordered">
        <thead class="thead-inverse">
        <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${users}" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>
                        <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANAGER')">
                            <a href="/addEditUser?id=${user.id}">
                                <span class="glyphicon glyphicon-edit"></span>
                            </a>
                        </security:authorize>
                        <security:authorize access="hasAnyRole('ROLE_ADMIN')">
                            <a href="/deleteUser?id=${user.id}">
                                <span class="glyphicon glyphicon-remove"></span>
                            </a>
                        </security:authorize>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
