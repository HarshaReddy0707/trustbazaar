<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Review</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f7fb; }
        .form-box { width: 500px; margin: 50px auto; padding: 25px;
                    background: #fff; border-radius: 10px; box-shadow: 0 0 10px #bbb; }
        label { display: block; margin-top: 10px; font-weight: bold; }
        input, textarea, select { width: 100%; padding: 12px; margin: 8px 0;
                                  border: 1px solid #ccc; border-radius: 6px; }
        textarea { height: 100px; }
        button { width: 100%; padding: 12px; background: #28a745; color: #fff;
                 border: none; border-radius: 6px; font-weight: bold; cursor: pointer; }
        button:hover { background: #218838; }
    </style>
</head>
<body>
<div class="form-box">
    <h2>Write a Review</h2>
    <form action="/reviews" method="post">
        <label for="supplier">Select Supplier</label>
        <select name="supplierId" required>
            <option value="">--Choose Supplier--</option>
            <option value="1">Supplier A</option>
            <option value="2">Supplier B</option>
        </select>

        <label for="rating">Rating</label>
        <select name="rating" required>
            <option value="5">⭐⭐⭐⭐⭐ (5)</option>
            <option value="4">⭐⭐⭐⭐ (4)</option>
            <option value="3">⭐⭐⭐ (3)</option>
            <option value="2">⭐⭐ (2)</option>
            <option value="1">⭐ (1)</option>
        </select>

        <label for="comment">Comment</label>
        <textarea name="comment" placeholder="Write your review..."></textarea>

        <button type="submit">Submit Review</button>
    </form>
</div>
</body>
</html>
