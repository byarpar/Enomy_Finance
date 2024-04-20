<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/Untitled (4).png'); /* Specify the path to your background image */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 60vh;
            text-align: center;
            
        }

        .container {
            text-align: center;
        }

        h2 {
            color: #fff; /* Change the text color to make it visible on the background */
        }

        a {
            text-decoration: none;
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
        }

        a:hover {
            background-color: #0056b3;
        }
        
          h2 {
            color: #000; 
            font-weight: bold; 
        }
        
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome to Enomy-Finances!</h2>
        <p>Click "Login Here!" to get started</p>
        <a href="login">Login</a>
    </div>
</body>
</html>
