<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <%@ include file="common/header.jspf" %>
    <title>Greeting page</title>
</head>
<body>
<%@ include file="common/navbar.jspf" %>

<h1>Hello ${login}!</h1>
</body>
</html>