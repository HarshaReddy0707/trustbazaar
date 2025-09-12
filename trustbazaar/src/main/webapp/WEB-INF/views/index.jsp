<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>TrustBazaar - Empowering Local Vendors</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            scroll-behavior: smooth;
        }
        .hero-bg {
            background-image: url('https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&w=1600&q=80');
            background-size: cover;
            background-position: center;
        }
    </style>
</head>
<body class="bg-gray-50 text-gray-800">

    <nav class="bg-white shadow-md sticky top-0 z-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex items-center justify-between h-16">
                <div class="flex-shrink-0">
                    <a href="#" class="text-2xl font-bold text-blue-600">🛒 TrustBazaar</a>
                </div>
                <div class="hidden md:block">
                    <div class="ml-10 flex items-baseline space-x-4">
                        <a href="product/list" class="text-gray-600 hover:bg-gray-200 hover:text-gray-900 px-3 py-2 rounded-md text-sm font-medium">Browse Products</a>
                        <a href="vendor/login" class="text-gray-600 hover:bg-gray-200 hover:text-gray-900 px-3 py-2 rounded-md text-sm font-medium">Vendor Portal</a>
                        <a href="supplier/login" class="bg-blue-600 text-white hover:bg-blue-700 px-4 py-2 rounded-md text-sm font-semibold shadow">Supplier Login</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <section class="hero-bg text-white">
        <div class="bg-black bg-opacity-60 h-96 flex flex-col justify-center items-center text-center px-6">
            <h1 class="text-4xl md:text-5xl font-extrabold mb-4">Empowering Street Vendors Across India</h1>
            <p class="text-lg md:text-xl mb-8 max-w-2xl">High-quality raw materials, delivered directly from verified suppliers at the best prices.</p>
            <a href="product/list" class="bg-green-500 hover:bg-green-600 text-white py-3 px-8 rounded-full font-bold text-lg shadow-xl transform hover:scale-105 transition duration-300">
                Explore Products Now
            </a>
        </div>
    </section>

    <section class="py-20 px-6 bg-white">
        <h2 class="text-3xl font-bold text-center mb-12 text-gray-800">Why Choose TrustBazaar?</h2>
        <div class="grid md:grid-cols-3 gap-10 max-w-6xl mx-auto text-center">
            <div class="p-6">
                <img src="https://img.icons8.com/color/96/shop.png" class="mx-auto mb-4 h-20 w-20" />
                <h3 class="text-xl font-semibold mb-2">Wholesale Prices</h3>
                <p class="text-gray-600">Access quality goods at wholesale prices. No middlemen, no compromise.</p>
            </div>
            <div class="p-6">
                <img src="https://img.icons8.com/color/96/delivery-scooter.png" class="mx-auto mb-4 h-20 w-20" />
                <h3 class="text-xl font-semibold mb-2">Reliable Delivery</h3>
                <p class="text-gray-600">Get raw materials delivered on time, every time, directly to your location.</p>
            </div>
            <div class="p-6">
                <img src="https://img.icons8.com/color/96/handshake.png" class="mx-auto mb-4 h-20 w-20" />
                <h3 class="text-xl font-semibold mb-2">Verified Suppliers</h3>
                <p class="text-gray-600">We onboard only genuine, verified suppliers to ensure top-quality goods.</p>
            </div>
        </div>
    </section>

    <footer class="bg-gray-800 text-white text-center p-6 mt-12">
        <p>&copy; 2025 TrustBazaar | All Rights Reserved</p>
    </footer>

</body>
</html>