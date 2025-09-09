<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Product List</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f8f9fa; }
        .container { max-width: 900px; margin: 40px auto; }
        h2 { text-align: center; margin-bottom: 20px; color: #0066cc; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: center; }
        th { background: #0066cc; color: #fff; }
        tr:nth-child(even) { background: #f2f2f2; }
        .btn { padding: 8px 15px; background: #0066cc; color: #fff;
               text-decoration: none; border-radius: 6px; }
        .btn:hover { background: #004d99; }
        .top-actions { display: flex; justify-content: space-between; align-items: center; }
        .search-box input { padding: 8px; width: 200px; border-radius: 6px; border: 1px solid #ccc; }
    </style>
</head>
<body>
<div class="container">
    <div class="top-actions">
        <h2>All Products</h2>
        <div class="search-box">
            <form action="/product/search" method="get">
                <input type="text" name="keyword" placeholder="Search product..."/>
                <button type="submit" class="btn">Search</button>
            </form>
        </div>
        <a href="add.jsp" class="btn">+ Add Product</a>
    </div>

    <table>
        <tr>
            <th>Product</th>
            <th>Category</th>
            <th>Price (₹)</th>
            <th>Supplier</th>
            <th>Actions</th>
        </tr>

        <!-- Example static rows (Replace with JSTL loop in Spring MVC) -->
        <tr>
            <td>Rice</td>
            <td>Grains</td>
            <td>50</td>
            <td>Supplier A</td>
            <td>
                <a href="add.jsp" class="btn">Edit</a>
                <a href="/product/delete/1" class="btn">Delete</a>
            </td>
        </tr>
        <tr>
            <td>Sunflower Oil</td>
            <td>Oils</td>
            <td>120</td>
            <td>Supplier B</td>
            <td>
                <a href="add.jsp" class="btn">Edit</a>
                <a href="/product/delete/2" class="btn">Delete</a>
            </td>
        </tr>

    </table>
</div>
</body>
</html>
