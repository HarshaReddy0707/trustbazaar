<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Supplier Registration - TrustBazaar</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/auth-style.css">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f8f9fa;
        }

        .auth-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            height: 100vh;
        }

        .auth-info-panel {
            background: url('https://images.unsplash.com/photo-1605902711622-cfb43c4437b5?auto=format&fit=crop&w=1400&q=80') no-repeat center center/cover;
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 60px;
        }

        .auth-info-panel h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            text-shadow: 1px 1px 6px rgba(0,0,0,0.6);
        }

        .auth-info-panel p {
            font-size: 1.2rem;
            line-height: 1.6;
            max-width: 450px;
            text-shadow: 1px 1px 4px rgba(0,0,0,0.5);
        }

        .auth-form-panel {
            display: flex;
            align-items: center;
            justify-content: center;
            background: white;
            padding: 40px;
        }

        .auth-form-panel form {
            width: 100%;
            max-width: 420px;
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        .auth-form-panel h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .form-group {
            margin-bottom: 18px;
        }

        .form-group label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            font-size: 0.9rem;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 1rem;
        }

        .form-group input:focus {
            border-color: #2d89ef;
            outline: none;
            box-shadow: 0 0 6px rgba(45,137,239,0.4);
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            background: #2d89ef;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .submit-btn:hover {
            background: #1b5cbf;
        }

        .login-link {
            margin-top: 15px;
            text-align: center;
            font-size: 0.9rem;
        }

        .login-link a {
            color: #2d89ef;
            font-weight: bold;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }

        #password-error {
            color: #D8000C;
            font-weight: 500;
            margin-bottom: 15px;
            text-align: center;
            display: none;
        }

        @media (max-width: 900px) {
            .auth-container {
                grid-template-columns: 1fr;
            }
            .auth-info-panel {
                display: none;
            }
        }
    </style>
</head>
<body>

    <div class="auth-container">

        <!-- Info panel -->
        <div class="auth-info-panel">
            <h1>Become a Supplier</h1>
            <p>Join TrustBazaar and supply your products directly to thousands of street vendors across India. Expand your reach and grow your business.</p>
        </div>

        <!-- Form panel -->
        <div class="auth-form-panel">
            <form id="registrationForm" action="/supplier/register" method="post">
                <h2>Create Your Supplier Account</h2>

                <div class="form-group">
                    <label for="name">Contact Person Name</label>
                    <input type="text" name="name" id="name" placeholder="Enter your full name" required/>
                </div>

                <div class="form-group">
                    <label for="mobile">Mobile Number</label>
                    <input type="tel" name="mobile" id="mobile" placeholder="Enter mobile number" required/>
                </div>

                <div class="form-group">
                    <label for="email">Business Email</label>
                    <input type="email" name="email" id="email" placeholder="contact@yourcompany.com" required/>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" placeholder="Create a secure password" required/>
                </div>

                <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm the password" required/>
                </div>

                <div id="password-error">Passwords do not match!</div>

                <button type="submit" class="submit-btn">Register as Supplier</button>

                <p class="login-link">
                    Already have an account? <a href="${pageContext.request.contextPath}/supplier/login">Login here</a>
                </p>
            </form>

            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    const form = document.getElementById('registrationForm');
                    const password = document.getElementById('password');
                    const confirmPassword = document.getElementById('confirmPassword');
                    const passwordError = document.getElementById('password-error');

                    form.addEventListener('submit', function (event) {
                        if (password.value !== confirmPassword.value) {
                            passwordError.style.display = 'block';
                            confirmPassword.style.borderColor = '#D8000C';
                            event.preventDefault();
                        } else {
                            passwordError.style.display = 'none';
                            confirmPassword.style.borderColor = '#ccc';
                        }
                    });
                });
            </script>
        </div>
    </div>

</body>
</html>
