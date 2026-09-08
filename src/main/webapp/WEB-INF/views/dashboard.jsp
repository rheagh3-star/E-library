<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>

<title>E-Library Dashboard</title>

<style>

body{
    font-family: 'Segoe UI', Tahoma, sans-serif;
    background: linear-gradient(135deg, #eef2f7, #dfe9f3);
    margin:0;
}

/* Header */
.header{
    background: linear-gradient(90deg, #2c3e50, #4ca1af);
    color:white;
    padding:18px 30px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    box-shadow:0 2px 6px rgba(0,0,0,0.2);
}

.header h2{
    margin:0;
}

.logout{
    color:white;
    text-decoration:none;
    background: rgba(255,255,255,0.2);
    padding:8px 15px;
    border-radius:20px;
    transition:0.3s;
}

.logout:hover{
    background:white;
    color:#2c3e50;
}

/* Container */
.container{
    padding:30px;
}

.container h3{
    margin-bottom:25px;
    color:#2c3e50;
}

/* Cards Layout */
.cards{
    display:flex;
    flex-wrap:wrap;
    gap:20px;
}

/* Card Style */
.card{
    flex:1 1 220px;
    padding:25px;
    background:white;
    border-radius:12px;
    box-shadow:0 4px 12px rgba(0,0,0,0.15);
    text-align:center;
    transition:0.3s ease;
    position:relative;
    overflow:hidden;
}

.card:hover{
    transform:translateY(-8px) scale(1.02);
    box-shadow:0 8px 20px rgba(0,0,0,0.25);
}

/* Icon style */
.card h4{
    font-size:18px;
    margin-bottom:15px;
}

/* Button */
.card a{
    text-decoration:none;
    display:inline-block;
    padding:10px 18px;
    border-radius:25px;
    background:#4ca1af;
    color:white;
    font-weight:bold;
    transition:0.3s;
}

.card a:hover{
    background:#2c3e50;
}

/* Subtle glow effect */
.card::before{
    content:"";
    position:absolute;
    width:100%;
    height:100%;
    top:0;
    left:-100%;
    background:linear-gradient(120deg, transparent, rgba(255,255,255,0.4), transparent);
    transition:0.5s;
}

.card:hover::before{
    left:100%;
}

</style>

</head>

<body>

<div class="header">
    <h2>📚 E-Library Dashboard</h2>
    <a class="logout" href="logout">Logout</a>
</div>

<div class="container">

<h3>Welcome, ${user.name} 👋</h3>

<div class="cards">

<div class="card">
    <h4>📚 View Resources</h4>
    <a href="/resources">Open</a>
</div>

<div class="card">
    <h4>🔍 Search Resources</h4>
    <a href="/resources/search">Search</a>
</div>

<div class="card">
    <h4>📖 Borrow History</h4>
    <a href="/borrow/history/${user.userId}">View</a>
</div>

<div class="card">
    <h4>⭐ Give Feedback</h4>
    <a href="/feedback">Open</a>
</div>

<div class="card">
    <h4>⬆ Upload Resource</h4>
    <a href="/resources/upload">Upload</a>
</div>

<div class="card">
    <h4>👤 Profile</h4>
    <a href="/users/profile/${user.userId}">View</a>
</div>

</div>

</div>

</body>
</html>