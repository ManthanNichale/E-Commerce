<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>

    <style>
        body { 
            font-family: Arial; 
            background-color: black; 
            /* Add background image */
            background-image: url('Backgroundimage.jpg'); /* replace with your image path */
            background-size: cover; /* cover the entire screen */
            background-repeat: no-repeat;
            background-position: center;
            
        }

        .container { 
            width: 300px; 
            padding: 20px; 
            background-color: rgba(255, 255, 255, 0.9); /* slightly transparent */
            margin: 100px auto; 
            border-radius: 10px; 
            box-shadow: 0 0 10px gray; 
        }

        input[type=text], input[type=password] { 
            width: 100%; 
            padding: 10px; 
            margin: 5px 0 15px 0; 
            border: 1px solid #ccc; 
            border-radius: 5px; 
        }

        input[type=submit] { 
            width: 100%; 
            padding: 10px; 
            background-color: #4CAF50; 
            color: white; 
            border: none; 
            border-radius: 5px; 
            cursor: pointer; 
        }

        input[type=submit]:hover { 
            background-color: #45a049; 
        }
    </style>
    
</head>
<body>

    <div class="container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <label>Username:</label>
            <input type="text" name="username" required><br>
            <label>Password:</label>
            <input type="password" name="password" required><br>
            <input type="submit" value="Login">
        </form>
        <p>Don't have an account? <a href="Register.jsp">Register</a></p>
    </div>
    
</body>
</html>