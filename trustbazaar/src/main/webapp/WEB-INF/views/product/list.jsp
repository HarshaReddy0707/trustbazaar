<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Browse Products - TrustBazaar</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-100">

    <nav class="bg-white shadow-md sticky top-0 z-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex items-center justify-between h-16">
                <div class="flex-shrink-0">
                    <a href="/" class="text-2xl font-bold text-blue-600">🛒 TrustBazaar</a>
                </div>
                <div class="hidden md:block">
                    <div class="ml-10 flex items-baseline space-x-4">
                        <a href="/product/list" class="bg-blue-100 text-blue-700 px-3 py-2 rounded-md text-sm font-medium">Browse Products</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <div class="container mx-auto mt-10 px-6">
        <div class="flex justify-between items-center mb-8">
            <h1 class="text-3xl font-bold text-gray-800">Our Products</h1>
            <a href="/product/add" class="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded-lg shadow-md transition duration-300">
                + Add New Product
            </a>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-8">
            <c:forEach var="product" items="${products}">
                <div class="bg-white rounded-lg shadow-lg overflow-hidden transform hover:-translate-y-2 transition-transform duration-300">
                    <img src="${not empty product.imageUrl ? product.imageUrl : 'https://via.placeholder.com/300'}" alt="${product.name}" class="w-full h-48 object-cover">
                    <div class="p-4">
                        <h3 class="text-lg font-semibold text-gray-800 mb-1">${product.name}</h3>
                        <p class="text-sm text-gray-500 mb-2">${product.category}</p>
                        <div class="flex items-center justify-between">
                            <p class="text-xl font-bold text-blue-600">
                                <fmt:formatNumber value="${product.price}" type="currency" currencySymbol="₹"/>
                            </p>
                            <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full transition duration-300">
                                Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
         <c:if test="${empty products}">
             <div class="text-center py-20">
                <p class="text-xl text-gray-500">No products found at the moment.</p>
            </div>
        </c:if>
    </div>

    <footer class="bg-gray-800 text-white text-center p-6 mt-12">
        <p>&copy; 2025 TrustBazaar | All Rights Reserved</p>
    </footer>

</body>
</html>