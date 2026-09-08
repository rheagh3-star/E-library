<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
    body {
        background-image: url('images/signup-background.jpg');
        background-size: cover;
        background-position: center;
        height: 100vh;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .signup-container {
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


<br><br><br>

<div class="signup-container">
    <div class="card col-md-5">
        <h3 class="text-center mb-4">Create Your Account</h3>
        <h4 class="text-success text-center">${success}</h4>
        <h4 class="text-danger text-center">${error}</h4>

       <form action="signup" method="post">

    <div class="form-group">
        <label>Full Name</label>
        <input type="text" name="name" class="form-control" required>
    </div>

    <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" class="form-control" required>
    </div>

    <div class="form-group">
        <label>Phone</label>
        <input type="text" name="phone" class="form-control" required>
    </div>

    <div class="form-group">
        <label>Password</label>
        <input type="password" name="password" class="form-control" required>
    </div>

    <!-- ROLE -->
    <div class="form-group">
        <label>Select Role</label>
        <select name="role" class="form-control" required>
            <option value="">-- Select Role --</option>
            <option value="MEMBER">Member</option>
            <option value="ADMIN">Admin</option>
        </select>
    </div>

    <button type="submit" class="btn btn-primary btn-block">Sign Up</button>

</form>
    </div>
</div>

</body>
</html>