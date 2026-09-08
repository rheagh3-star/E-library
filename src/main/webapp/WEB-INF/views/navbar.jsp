

<%
String email = (String) session.getAttribute("us");
%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">

    <a class="navbar-brand" href="/">eLibrary</a>

    <ul class="navbar-nav ml-auto">

        <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="/resources/search">Resources</a></li>
        <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
        <li class="nav-item"><a class="nav-link" href="/contact">Contact</a></li>

        <% if(email != null){ %>
            <li class="nav-item"><span class="nav-link">👤 <%= email %></span></li>
            <li class="nav-item"><a class="nav-link text-warning" href="/logout">Logout</a></li>
        <% } else { %>
            <li class="nav-item"><a class="nav-link" href="/signup">Sign Up</a></li>
            <li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
        <% } %>

    </ul>

</nav>