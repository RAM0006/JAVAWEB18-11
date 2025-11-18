<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My JSP Website</title>
    <style>
        body { font-family: Arial; margin: 40px; }
        nav a { margin-right: 20px; }
        section { margin-top: 30px; }
    </style>
</head>
<body>

<h1>THE BATMAN</h1>

<!-- Navigation (anchors scroll within same page) -->
<nav>
    <a href="#home">Home</a>
    <a href="#about">About</a>
    <a href="#contact">Contact</a>
</nav>

<!-- HOME SECTION -->
<section id="home">
    <h2>Home</h2>
    <p>This is a single-page JSP website.</p>
</section>

<!-- ABOUT SECTION -->
<section id="about">
    <h2>About</h2>
    <p>This page is built using JSP and HTML in one file.</p>
</section>

<!-- CONTACT SECTION WITH JSP FORM HANDLING -->
<section id="contact">
    <h2>Contact</h2>

    <form method="post">
        Name: <input type="text" name="name"><br><br>
        Message: <textarea name="message"></textarea><br><br>
        <input type="submit" value="Send">
    </form>

    <%
        String name = request.getParameter("name");
        String msg = request.getParameter("message");

        if (name != null && msg != null && !name.isEmpty()) {
    %>
        <h3>Received Message:</h3>
        <p><strong>Name:</strong> <%= name %></p>
        <p><strong>Message:</strong> <%= msg %></p>
    <%
        }
    %>
</section>

</body>
</html>
