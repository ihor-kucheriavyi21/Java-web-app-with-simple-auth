<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <%@ include file="common/header.jspf" %>
    <title>Greeting page</title>
</head>
<body>
    <a href="/user/viewUsers">Users</a>
    <a href="/logout">Logout</a>
    <h1>Hello ${login}!</h1>
</body>
</html>