<%@ page import="java.util.List" %>
<%@ page import="com.shiv.model.User" %>

<%
List<User> users = (List<User>) request.getAttribute("users");
%>

<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body style="background: linear-gradient(135deg, #667eea, #764ba2); min-height:100vh;">

<div class="container py-5">

    <div class="card shadow-lg">
        
        <div class="card-header d-flex justify-content-between align-items-center bg-primary text-white">
            <h4 class="mb-0">User Management</h4>
            <a href="form.jsp" class="btn btn-light btn-sm">+ Add User</a>
        </div>

        <div class="card-body">

            <table class="table table-hover align-middle">
                <thead class="table-primary">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th style="width:180px;">Actions</th>
                    </tr>
                </thead>

                <tbody>
                <% for(User u : users){ %>
                    <tr>
                        <td><%= u.getId() %></td>
                        <td><%= u.getName() %></td>
                        <td><%= u.getEmail() %></td>
                        <td>
                            <a href="user?action=edit&id=<%= u.getId() %>" 
                               class="btn btn-sm btn-warning">Edit</a>

                            <a href="user?action=delete&id=<%= u.getId() %>" 
                               class="btn btn-sm btn-danger"
                               onclick="return confirm('Are you sure you want to delete?');">
                               Delete
                            </a>
                        </td>
                    </tr>
                <% } %>
                </tbody>

            </table>

        </div>
    </div>

</div>

</body>
</html>