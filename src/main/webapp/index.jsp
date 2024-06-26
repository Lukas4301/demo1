<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Register Form</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f0f0f0;
        }

        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            width: 300px;
        }

        .form-container h2 {
            margin-bottom: 20px;
            text-align: center;
        }

        .form-container input {
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container button {
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            font-size: 16px;
        }

        .form-container button:hover {
            background-color: #45a049;
        }

        .form-container .toggle-btn {
            text-align: center;
            margin-top: 10px;
        }

        .form-container .toggle-btn a {
            color: #007bff;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="form-container" id="login-form">
    <h2>Prisijungti</h2>
    <input type="text" placeholder="Vardas" required>
    <input type="password" placeholder="Slaptazodis" required>
    <button type="submit">Prisijungti</button>
    <div class="toggle-btn">
        <a href="#" onclick="toggleForm('register')">Registruotis</a>
    </div>
</div>

<div class="form-container" id="register-form" style="display: none;">
    <h2>Registruotis</h2>
    <input type="text" placeholder="Vardas" required>
    <input type="email" placeholder="El. Pastas" required>
    <input type="password" placeholder="Slaptazodis" required>
    <button type="submit">Registruotis</button>
    <div class="toggle-btn">
        <a href="#" onclick="toggleForm('login')">Prisijungti</a>
    </div>
</div>

<script>
    function toggleForm(formName) {
        if (formName === 'register') {
            document.getElementById('login-form').style.display = 'none';
            document.getElementById('register-form').style.display = 'block';
        } else if (formName === 'login') {
            document.getElementById('login-form').style.display = 'block';
            document.getElementById('register-form').style.display = 'none';
        }
    }
</script>
</body>
</html>
