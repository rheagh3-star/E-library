<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.jpa.model.Resource" %>

<!DOCTYPE html>

<html>

<head>
<title>Search Resources</title>

<style>

body{
font-family:Arial;
background:#f4f6f9;
}

.container{
margin:30px;
}

table{
border-collapse:collapse;
width:100%;
background:white;
}

th,td{
padding:10px;
border:1px solid #ccc;
}

th{
background:#2c3e50;
color:white;
}

</style>

</head>

<body>

<div class="container">

<h2>Search Library Resources</h2>

<form action="/resources/search" method="get">

<input type="text" name="keyword" placeholder="Enter title or author" required>

<button type="submit">Search</button>

</form>

<br><br>

<table>

<tr>
<th>ID</th>
<th>Title</th>
<th>Author</th>
<th>Description</th>
</tr>

<%

List<Resource> resources = (List<Resource>) request.getAttribute("resources");

if(resources != null){
for(Resource res : resources){

%>

<tr>

<td><%= res.getResourceId() %></td>
<td><%= res.getTitle() %></td>
<td><%= res.getAuthor() %></td>
<td><%= res.getDescription() %></td>

</tr>

<%
}
}
%>

</table>

</div>

</body>
</html>
