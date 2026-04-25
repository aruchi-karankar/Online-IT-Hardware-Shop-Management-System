<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <meta charset="UTF-8">
    
    <link rel="stylesheet" href="style.css">
</head>

<body>

<div class="form-container">

    <h2>Register</h2>

    <form action="registerUser" method="post">

        <label>Name</label><br>
        <input type="text" name="name" required><br>

        <label>Email</label><br>
        <input type="email" name="email" required><br>

        <label>Password</label><br>
        <input type="password" name="password" required><br>

        <button type="submit">Register</button>

    </form>

</div>

</body>
</html>