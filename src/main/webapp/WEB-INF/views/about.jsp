<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About - eLibrary</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<style>

body {
    background: linear-gradient(135deg, #2c3e50, #bdc3c7);
    font-family: 'Segoe UI', sans-serif;
}

/* Navbar */
.navbar {
    background: linear-gradient(90deg, #141E30, #243B55);
}

/* About Card */
.about-card {
    margin-top: 100px;
    padding: 40px;
    border-radius: 15px;
    background: #ffffff;
    box-shadow: 0 8px 25px rgba(0,0,0,0.3);
}

/* Title */
.about-title {
    font-weight: bold;
    margin-bottom: 20px;
    color: #333;
    text-align: center;
}

/* Text */
.about-text {
    font-size: 16px;
    color: #555;
    line-height: 1.6;
    text-align: justify;
}

/* Section spacing */
.section {
    margin-top: 20px;
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
<li class="nav-item"><a class="nav-link active" href="/about">About</a></li>
<li class="nav-item"><a class="nav-link" href="/contact">Contact</a></li>
</ul>
</nav>

<div class="container">
    <div class="about-card col-md-8 mx-auto">

        <h3 class="about-title">About eLibrary</h3>
        <hr>

        <div class="about-text">
            <p>
                eLibrary is a digital platform designed to provide users with easy access to a wide range of books and learning resources. 
                It allows readers to explore, borrow, and manage books efficiently from anywhere.
            </p>

            <div class="section">
                <h5>Our Mission</h5>
                <p>
                    To make knowledge accessible to everyone by providing a simple and efficient digital library system.
                </p>
            </div>

            <div class="section">
                <h5>Our Features</h5>
                <ul>
                    <li>User registration and secure login</li>
                    <li>Browse books by category</li>
                    <li>Borrow and track books</li>
                    <li>Membership management</li>
                </ul>
            </div>

            <div class="section">
                <h5>Our Vision</h5>
                <p>
                    To create a reliable and user-friendly online library where users can easily discover and access knowledge.
                </p>
            </div>
        </div>

    </div>
</div>

</body>
</html>