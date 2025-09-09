<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manage Products</title>
    <style>
        body { font-family: Arial, sans-serif; background: #fdfdfd; }
        .container { max-width: 900px; margin: 40px auto; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 10px; text-align: center; }
        th { background: #0066cc; color: #fff; }
        tr:nth-child(even) { background: #f2f2f2; }
        a.btn, button { padding: 8px 15px; background: #0066cc; color: #fff;
                        text-decoration: none; border-radius: 6px; border: none; cursor: pointer; }
        a.btn:hover, button:hover { background: #004d99; }
    </style>
</head>
<body>
<div class="container">
    <h2>My Products</h2>
    <a href="../product/add.jsp" class="btn">+ Add Product</a>
    <table>
        <tr>
            <th>Product</th>
            <th>Category</th>
            <th>Price (₹)</th>
            <th>Actions</th>
        </tr>
        <tr>
            <td>Rice</td>
            <td>Grains</td>
            <td>50</td>
            <td>
                <a href="../product/add.jsp" class="btn">Edit</a>
                <button>Delete</button>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
