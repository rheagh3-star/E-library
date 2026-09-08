<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<style>
    body {
        background-image: url('images/login-background.jpg'); /* Change if needed */
        background-size: cover;
        background-position: center;
        height: 100vh;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .login-container {
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .card {
        padding: 30px;
        border-radius: 20px;
        box-shadow: 0px 0px 20px rgba(0,0,0,0.3);
        background-color: rgba(255, 255, 255, 0.95);
    }

    .form-control:focus {
        box-shadow: none;
        border-color: #007bff;
    }

    .btn-primary {
        border-radius: 25px;
    }
</style>
</head>

<body>

<%@ include file="navbar.jsp" %>

<br><br><br>
<div class="login-container">
    <div class="card col-md-5">
        <h3 class="text-center mb-4">Login to Your Account</h3>
        <h4 class="text-center text-danger">${msg}</h4>

     <form action="login" method="post">
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" name="email" class="form-control" id="email"
                    placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" class="form-control" id="password"
                    placeholder="Enter your password" required>
            </div>

            <div class="form-group text-center">
                <button type="submit" class="btn btn-primary btn-block">Login</button>
            </div>

            <div class="text-center">
                <small>Don't have an account? <a href="signup">Register here</a></small>
            </div>

        </form>
    </div>
</div>

</body>
</html>
