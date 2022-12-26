<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<html>
    <head>
        <title>View Users</title>
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                </tr>
            </thead>
            <tbody>
            <%
                double num = Math.random();
                if (num > 0.95) {
              %>
                  <h2>You'll have a luck day!</h2><p>(<%= num %>)</p>
              <%
                } else {
              %>
                  <h2>Well, life goes on ... </h2><p>(<%= num %>)</p>
              <%
                }
              %>
              <a href="<%= request.getRequestURI() %>"><h3>Try Again</h3></a>

                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.name}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>