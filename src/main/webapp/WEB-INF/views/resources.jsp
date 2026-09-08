<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Resources</title>

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

/* Container */
.container {
    padding: 30px;
}

/* Card */
.card {
    background: #ffffff;
    padding: 25px;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
}

/* Title */
.card h2 {
    margin-top: 0;
    margin-bottom: 15px;
}

/* Upload Button */
.add-btn {
    display: inline-block;
    margin-bottom: 15px;
    padding: 8px 15px;
    background-color: #5aa6b1;
    color: white;
    text-decoration: none;
    border-radius: 20px;
    transition: 0.3s;
}

.add-btn:hover {
    background-color: #3f7c85;
}

/* Table */
table {
    width: 100%;
    border-collapse: collapse;
}

/* Table Head */
th {
    background-color: #5aa6b1;
    color: white;
    padding: 10px;
    text-align: left;
}

/* Table Cells */
td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

/* Hover effect */
tr:hover {
    background-color: #f5f9fb;
}

/* Action links */
.action-btn {
    text-decoration: none;
    padding: 5px 10px;
    border-radius: 10px;
    margin-right: 5px;
    font-size: 13px;
}

/* Edit */
.edit {
    background-color: #ffd166;
    color: black;
}

/* Delete */
.delete {
    background-color: #ef476f;
    color: white;
}

</style>

</head>

<body>




<div class="header">
    📚 E-Library Dashboard
</div>

<div class="container">

    <div class="card">

        <h2>📖 Library Resources</h2>

        <a href="/resources/upload" class="add-btn">+ Upload New Resource</a>

        <table>

            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Description</th>
                <th>Actions</th>
            </tr>

            <c:forEach var="res" items="${resources}">
                <tr>
                    <td>${res.resourceId}</td>
                    <td>${res.title}</td>
                    <td>${res.author}</td>
                    <td>${res.description}</td>

                    <td>
                        <a href="/resources/edit/${res.resourceId}" class="action-btn edit">Edit</a>
                        <a href="/resources/delete/${res.resourceId}" class="action-btn delete">Delete</a>
                    </td>
                </tr>
            </c:forEach>

        </table>

    </div>

</div>

</body>
</html>