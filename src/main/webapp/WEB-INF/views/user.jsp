<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>

<%
String username = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eLibrary - User Profile</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  

<style>
body {
    padding-top: 80px;
    background: linear-gradient(135deg, #74ebd5, #ACB6E5);
    font-family: 'Segoe UI', sans-serif;
}

.card {
    margin: 30px auto;
    border-radius: 15px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.2);
}

.btn {
    border-radius: 25px;
    margin: 5px;
    padding: 10px 18px;
}

h2 {
    text-align: center;
    color: #fff;
    font-weight: bold;
}

.alert {
    border-radius: 10px;
}
</style>

</head>

<body>

<%@ include file="navbar.jsp" %>

<div class="container">

<h2>Your Reading Universe</h2>

<!-- ✅ CHECK LOGIN USING SESSION DIRECTLY -->
<% if(session.getAttribute("us") != null){ %>

<div class="card col-md-6">
    <div class="card-body text-center">

        <h4 class="card-title">Reader Profile</h4>
        <hr>

        <p><strong>Email:</strong> <%= session.getAttribute("us") %></p>

        <% if(username != null){ %>
            <p><strong>Name:</strong> <%= username %></p>
        <% } %>

        <hr>

        <a href="/resources/search" class="btn btn-primary">My Resources</a>
        <a href="/borrow/history" class="btn btn-secondary">History</a>
        <a href="/membership" class="btn btn-info">Membership</a>
        <a href="/wishlist" class="btn btn-warning">Wishlist</a>

    </div>
</div>

<% } else { %>

<div class="alert alert-warning text-center mt-4">
     Please <a href="/login">login</a> to unlock your library world.
</div>

<% } %>

</div>

</body>
</html>