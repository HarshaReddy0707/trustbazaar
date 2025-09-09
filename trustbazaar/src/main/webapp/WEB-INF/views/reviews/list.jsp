<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Supplier Reviews</title>
    <style>
        body { font-family: Arial, sans-serif; background: #fdfdfd; }
        .container { max-width: 900px; margin: 40px auto; }
        .review-card { background: #fff; border-radius: 10px; padding: 20px;
                       margin-bottom: 20px; box-shadow: 0 0 8px #ccc; }
        .review-header { display: flex; justify-content: space-between; align-items: center; }
        .review-header h3 { margin: 0; color: #0066cc; }
        .rating { color: #ffcc00; font-size: 18px; }
        p.comment { margin-top: 10px; }
    </style>
</head>
<body>
<div class="container">
    <h2>Supplier Reviews</h2>

    <div class="review-card">
        <div class="review-header">
            <h3>Supplier A</h3>
            <div class="rating">⭐⭐⭐⭐⭐</div>
        </div>
        <p class="comment">Great quality products at reasonable price!</p>
        <small>Reviewed by: Vendor 1 | Date: 2025-09-05</small>
    </div>

    <div class="review-card">
        <div class="review-header">
            <h3>Supplier B</h3>
            <div class="rating">⭐⭐⭐⭐</div>
        </div>
        <p class="comment">Good service, but delivery was slightly late.</p>
        <small>Reviewed by: Vendor 2 | Date: 2025-09-03</small>
    </div>

</div>
</body>
</html>
