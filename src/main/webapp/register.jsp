<!DOCTYPE html>
<html>
<head>
    <title>Register Page</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #ff9a9e, #fad0c4);

          
            display: flex;
            justify-content: center;   /* horizontal center */
            align-items: center;       /* vertical center */
            height: 100vh;             /* full screen height */
            margin: 0;
        }

        .container {
            width: 320px;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input[type=text],
        input[type=password] {
            width: 100%;
            padding: 10px;
            margin: 8px 0 15px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type=submit] {
            width: 100%;
            padding: 10px;
            background: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type=submit]:hover {
            background: #45a049;
        }

        p {
            margin-top: 15px;
        }

        a {
            text-decoration: none;
            color: #ff4b2b;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>

</head>
<body>

<div class="container">
    <h2>Create Account</h2>

    <form action="RegisterServlet" method="post">

        <input type="text" name="uname" placeholder="Enter Username" required>

        <input type="password" name="pass" placeholder="Enter Password" required>

        <input type="password" name="cpass" placeholder="Confirm Password" required>

        <input type="submit" value="Register">

    </form>

    <p>Already have an account? <a href="Login.jsp">Login</a></p>
</div>

</body>
</html>