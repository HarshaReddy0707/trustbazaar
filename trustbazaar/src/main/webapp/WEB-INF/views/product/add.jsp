<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Product</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f0f6fa; }
        .form-box { width: 500px; margin: 50px auto; padding: 25px; background: #fff;
                    border-radius: 10px; box-shadow: 0 0 10px #aaa; }
        input, select { width: 100%; padding: 12px; margin: 10px 0;
                        border: 1px solid #ccc; border-radius: 6px; }
        button { width: 100%; padding: 12px; background: #0066cc; color: #fff;
                 border: none; border-radius: 6px; font-weight: bold; cursor: pointer; }
        button:hover { background: #004d99; }
    </style>
</head>
<body>
<div class="form-box">
    <h2>Add Product</h2>
    <form action="/product/add" method="post">
        <input type="text" name="name" placeholder="Product Name" required/>
        <select name="category" required>
            <option value="">Select Category</option>
            <option>Grains</option>
            <option>Spices</option>
            <option>Vegetables</option>
            <option>Oils</option>
        </select>
        <input type="number" name="price" placeholder="Price (₹)" required/>
        <button type="submit">Save Product</button>
    </form>
</div>
</body>
</html>
