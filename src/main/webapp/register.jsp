<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style>
    body { font-family: Arial; background-color: #FFE4E1; }
    .container { width: 300px; padding: 20px; background-color: white; margin: 100px auto; border-radius: 10px; box-shadow: 0 0 10px gray; }
    input[type=text], input[type=password] { width: 100%; padding: 10px; margin: 5px 0 15px 0; border: 1px solid #ccc; border-radius: 5px; }
    input[type=submit] { width: 100%; padding: 10px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer; }
    input[type=submit]:hover { background-color: #45a049; }
</style>
</head>
<body>

<div class="container">
    <h2>Register</h2>
    <form action="RegisterServlet" method="post">
        <label>Username=</label>
        <input type="text" name="uname" required>

        <label>Password=</label>
        <input type="password" name="pass" required>

        <input type="submit" value="Register">
    </form>
    <p>Already have an account? <a href="Login.jsp">Login</a></p>
</div>

</body>
</html>