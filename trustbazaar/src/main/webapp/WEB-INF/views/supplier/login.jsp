<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Supplier Login</title>
    <style>
        body { font-family: Arial, sans-serif; background: #eef2f7; }
        .login-box { width: 400px; margin: 100px auto; padding: 30px;
                     background: #fff; border-radius: 10px; box-shadow: 0 0 10px #ccc; }
        input { width: 100%; padding: 12px; margin: 8px 0; border: 1px solid #ccc;
                border-radius: 6px; }
        button { width: 100%; padding: 12px; background: #0066cc; color: #fff;
                 border: none; border-radius: 6px; font-weight: bold; cursor: pointer; }
        button:hover { background: #004d99; }
        a { display: block; text-align: center; margin-top: 10px; color: #0066cc; text-decoration: none; }
    </style>
</head>
<body>
<div class="login-box">
    <h2>Supplier Login</h2>
    <form action="${pageContext.request.contextPath}/supplier/login" method="post">
        <input type="email" name="email" placeholder="Email" required/>
        <input type="password" name="password" placeholder="Password" required/>
        <button type="submit">Login</button>
    </form>
    <%-- This link is now corrected to use the application's context path --%>
    <a href="${pageContext.request.contextPath}/supplier/register">New Supplier? Register</a>
</div>
</body>
</html>
