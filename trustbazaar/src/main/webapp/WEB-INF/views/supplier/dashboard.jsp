<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Supplier Dashboard</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f4; margin: 0; }
        header { background: #0066cc; padding: 15px; color: #fff; text-align: center; }
        nav { background: #004d99; padding: 10px; text-align: center; }
        nav a { margin: 0 15px; color: #fff; text-decoration: none; }
        nav a:hover { text-decoration: underline; }
        .container { padding: 20px; }
        .card { background: #fff; border-radius: 10px; padding: 20px;
                margin-bottom: 20px; box-shadow: 0 0 10px #ccc; }
    </style>
</head>
<body>
<header>
    <h1>Supplier Dashboard</h1>
</header>
<nav>
    <a href="products.jsp">My Products</a>
    <a href="../reviews/list.jsp">Reviews</a>
    <a href="/logout">Logout</a>
</nav>
<div class="container">
    <div class="card">
        <h2>Welcome, Supplier!</h2>
        <p>Manage your raw materials, view reviews, and update details here.</p>
    </div>
</div>
</body>
</html>
