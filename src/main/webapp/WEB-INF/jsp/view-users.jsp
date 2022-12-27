<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ include file="common/header.jspf" %>
    <title>View Users</title>
</head>
<body>
<%@ include file="common/navbar.jspf" %>

<div class="container">
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Login</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.name}</td>
                <td>${user.login}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>