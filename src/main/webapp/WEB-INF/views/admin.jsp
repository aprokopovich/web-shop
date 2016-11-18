<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<jsp:include page="header.jsp" />
<div class="container">


    <div class="bs-example" data-example-id="condensed-table">
        <table class="table table-condensed">
            <thead>
            <tr>
                <th>#</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Username</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${users}" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>
                        <%--<security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANAGER')">--%>
                            <%--<a href="/editUser?id=${user.id}">Edit</a>--%>
                        <%--</security:authorize>--%>
                        <%--&nbsp;&nbsp;&nbsp;&nbsp;--%>
                        <%--<security:authorize access="hasAnyRole('ROLE_ADMIN')">--%>
                            <%--<a href="/deleteUser?id=${user.id}">Delete</a>--%>
                        <%--</security:authorize>--%>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>