<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact - eLibrary</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<style>

body {
    background: linear-gradient(135deg, #1d2b64, #f8cdda);
    font-family: 'Segoe UI', sans-serif;
}

/* Navbar */
.navbar {
    background: linear-gradient(90deg, #141E30, #243B55);
}

/* Contact Card */
.contact-card {
    margin-top: 120px;
    padding: 40px;
    border-radius: 15px;
    background: #ffffff;
    box-shadow: 0 8px 25px rgba(0,0,0,0.3);
    text-align: center;
}

/* Title */
.contact-title {
    font-weight: bold;
    margin-bottom: 20px;
    color: #333;
}

/* Contact Info */
.contact-info {
    font-size: 18px;
    margin: 12px 0;
    color: #555;
}

/* Links */
.contact-info a {
    text-decoration: none;
    color: #007bff;
}

.contact-info a:hover {
    text-decoration: underline;
}

</style>

</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-sm navbar-dark fixed-top">  
<a class="navbar-brand" href="/">eLibrary</a>  

<ul class="navbar-nav ml-auto">
<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
<li class="nav-item"><a class="nav-link" href="/books">Books</a></li>
<li class="nav-item"><a class="nav-link" href="/about">About</a></li>
<li class="nav-item"><a class="nav-link active" href="/contact">Contact</a></li>
</ul>
</nav>

<div class="container">
    <div class="contact-card col-md-5 mx-auto">

        <h3 class="contact-title">Contact Us</h3>
        <hr>

        <div class="contact-info">
            <strong>Phone:</strong> 
            <a href="tel:+9198......">+91 987.......</a>
        </div>

        <div class="contact-info">
            <strong>Email:</strong> 
            <a href="mailto:elibrary@gmail.com">elibrary@gmail.com</a>
        </div>

        <hr>

        <p style="color: gray;">
            For any assistance, feel free to reach out during working hours.
        </p>

    </div>
</div>

</body>
</html>