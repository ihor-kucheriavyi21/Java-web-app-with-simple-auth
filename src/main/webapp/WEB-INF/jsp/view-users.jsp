<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>View Users</title>
    </head>
    <body>
        <a href="/greeting">Greeting</a>
        <a href="/logout">Logout</a>
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
    </body>
</html>