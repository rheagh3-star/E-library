<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<title>Upload Resource</title>

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

/* Centering */
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 85vh;
}

/* Card box */
.card {
    background: #ffffff;
    padding: 30px 40px;
    border-radius: 15px;
    width: 400px;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
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
    background-color: #5aa6b1;
    border: none;
    border-radius: 20px;
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

button:hover {
    background-color: #3f7c85;
}

</style>

</head>

<body>

<div class="header">
    📚 E-Library Dashboard
</div>

<div class="container">

    <div class="card">

        <h2>⬆ Upload Resource</h2>

        <form action="/resources/save" method="post">

            <label>Title:</label>
            <input type="text" name="title" required>

            <label>Author:</label>
            <input type="text" name="author" required>

            <label>Description:</label>
            <textarea name="description"></textarea>

            <label>File URL:</label>
            <input type="text" name="fileUrl">

            <button type="submit">Upload</button>

        </form>

    </div>

</div>

</body>
</html>