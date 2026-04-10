<%@ page import="com.shiv.model.User" %>
<%
User u = (User) request.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<div class="wrapper">
    <div class="card">

        <h2>Edit User</h2>

        <form action="user" method="post">

            <input type="hidden" name="id" value="<%= u.getId() %>"/>

            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" value="<%= u.getName() %>" required>
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" value="<%= u.getEmail() %>" required>
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="text" name="password" value="<%= u.getPassword() %>" required>
            </div>

            <button type="submit">Update User</button>

        </form>

        <div class="link">
            <a href="user">← Back to List</a>
        </div>

    </div>
</div>

</body>
</html>