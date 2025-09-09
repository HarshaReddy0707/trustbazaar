<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Vendor Login</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">

<div class="bg-white p-8 rounded shadow-lg w-96">
    <h2 class="text-2xl font-bold mb-4 text-center">Vendor Login</h2>
    <form action="/vendor/login" method="post" class="space-y-4">
        <input type="text" name="email" placeholder="Email" class="border p-2 w-full rounded">
        <input type="password" name="password" placeholder="Password" class="border p-2 w-full rounded">
        <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded w-full">Login</button>
    </form>
    <p class="mt-4 text-center text-sm">
        Don't have an account? <a href="/vendor/register" class="text-blue-500">Register</a>
    </p>
</div>

</body>
</html>
