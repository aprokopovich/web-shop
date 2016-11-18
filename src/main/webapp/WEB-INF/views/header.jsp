
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<html>
<head>
    <title>Web Shop</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<ul class="nav nav-list">


    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="post" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        <p> ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a>
        </p>
    </c:if>

    <li class="active">
        <security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANAGER')">
            <a href="<c:url value="/listUsers"/>">Users</a>
        </security:authorize>
    </li>

    <%--<li class="active">--%>
        <%--<a href="<c:url value="/orders"/>">My cart</a>--%>
    <%--</li>--%>

    <%--<li class="active">--%>
        <%--<a href="<c:url value="/toCategories"/>">Categories</a>--%>
    <%--</li>--%>
    <%--<li class="active">--%>
        <%--<form action="<c:url value="/j_spring_security_logout"/>" method="post">--%>
            <%--&lt;%&ndash;<input type="submit" value="Logout" class="btn btn-warning" role="button"/>&ndash;%&gt;--%>

            <%--<button type="submit" >Logout</button>--%>
            <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
        <%--</form>--%>
    <%--</li>--%>
</ul>


</body>
</html>
