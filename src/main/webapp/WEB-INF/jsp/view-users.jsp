<%@page import="java.util.ArrayList"%>
<%@page import="com.example.task.servingwebcontent.entity.User"%>

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
              <% ArrayList<User> userList=(ArrayList<User>) request.getAttribute("users");
                for (User user : userList) { %>
                    <div><%= user.getName() %></div>
                <%
                }
                %>
            </tbody>
        </table>
    </body>
</html>