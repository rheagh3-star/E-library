<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<title>Edit Resource</title>

<style>

/* Background */
body {
    font-family: 'Segoe UI', Tahoma, sans-serif;
    background: linear-gradient(135deg, #eef2f7, #dfe9f3);
    margin: 0;
}

/* Header */
.header {
    background: linear-gradient(to right, #3f7c85, #5aa6b1);
    color: white;
    padding: 15px 30px;
    font-size: 20px;
    font-weight: bold;
}

/* Center container */
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 85vh;
}

/* Card */
.card {
    background: #ffffff;
    padding: 30px 40px;
    border-radius: 15px;
    width: 400px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
}

/* Title */
.card h2 {
    text-align: center;
    margin-bottom: 20px;
}

/* Labels */
label {
    font-weight: 500;
}

/* Inputs */
input, textarea {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    margin-bottom: 15px;
    border-radius: 8px;
    border: 1px solid #ccc;
    font-size: 14px;
}

/* Button */
button {
    width: 100%;
    padding: 10px;
    background-color: #ffd166; /* slightly different for edit */
    border: none;
    border-radius: 20px;
    color: black;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

button:hover {
    background-color: #e6b84f;
}

</style>

</head>

<body>

<div class="header">
    📚 E-Library Dashboard
</div>

<div class="container">

    <div class="card">

        <h2>✏ Edit Resource</h2>

        <form action="/resources/update" method="post">

            <input type="hidden" name="resourceId" value="${resource.resourceId}">

            <label>Title:</label>
            <input type="text" name="title" value="${resource.title}">

            <label>Author:</label>
            <input type="text" name="author" value="${resource.author}">

            <label>Description:</label>
            <textarea name="description">${resource.description}</textarea>

            <label>File URL:</label>
            <input type="text" name="fileUrl" value="${resource.fileUrl}">

            <button type="submit">Update</button>

        </form>

    </div>

</div>

</body>
</html>