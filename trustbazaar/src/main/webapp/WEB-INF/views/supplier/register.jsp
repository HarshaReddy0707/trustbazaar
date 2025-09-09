<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Supplier Register</title>
    <style>
        body { font-family: Arial, sans-serif; background: #eef7f0; }
        .register-box { width: 450px; margin: 50px auto; padding: 30px;
                        background: #fff; border-radius: 10px; box-shadow: 0 0 10px #bbb; }
        input { width: 100%; padding: 12px; margin: 8px 0; border: 1px solid #ccc;
                border-radius: 6px; }
        button { width: 100%; padding: 12px; background: #28a745; color: #fff;
                 border: none; border-radius: 6px; font-weight: bold; cursor: pointer; }
        button:hover { background: #218838; }
    </style>
</head>
<body>
<div class="register-box">
    <h2>Supplier Registration</h2>
    <form action="/supplier/register" method="post">
        <input type="text" name="name" placeholder="Supplier Name" required/>
        <input type="text" name="location" placeholder="Location" required/>
        <input type="email" name="email" placeholder="Email" required/>
        <input type="password" name="password" placeholder="Password" required/>
        <button type="submit">Register</button>
    </form>
</div>
</body>
</html>
