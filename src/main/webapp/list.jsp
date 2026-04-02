<%@ page import="java.util.List" %>
<%@ page import="com.shiv.model.User" %>

<%
List<User> users = (List<User>) request.getAttribute("users");
%>

<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<div class="container">
    <div class="table-card">

        <h2>User List</h2>

        <div class="top-bar">
            <a href="form.jsp" class="btn">+ Add User</a>
        </div>

        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Actions</th>
            </tr>

            <% for(User u : users){ %>
            <tr>
                <td><%= u.getId() %></td>
                <td><%= u.getName() %></td>
                <td><%= u.getEmail() %></td>
                <td>
                    <a class="edit" href="user?action=edit&id=<%= u.getId() %>">Edit</a>
                    <a class="delete" href="user?action=delete&id=<%= u.getId() %>">Delete</a>
                </td>
            </tr>
            <% } %>

        </table>

    </div>
</div>

</body>
</html>