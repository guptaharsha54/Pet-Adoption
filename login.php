<?php

require_once("config.php");
require_once("Nav-bar.php");


if (isset($_POST['submit'])) {
    if (empty($_POST['username']) || empty($_POST['password'])) {
        $error = "Username or Password is invalid";
    } else {
        $username = $_POST["username"];
        $password = $_POST["password"];

// SQL query to fetch information of registerd users and finds user match.
        $query = mysqli_query($mysqli, "select * from userdetails where Password='$password' AND Username='$username'");
        $rows = mysqli_num_rows($query);
        if ($rows == 1) {
            $_SESSION['login_user'] = $username; // Initializing Session
            header("location: decide.php"); // Redirecting To Other Page
        } else {
            $error = "Username or Password is invalid";
        }
    }
}
?>

<html>
<head>
    <style>
        fieldset{
            color: #070303;
            font-family: "Arial";
            width: 350px;
            margin:50px auto
        }
        .title {
            height: 30px;
            width: 300px;
            background-color: #555;
        }
        .submit{
            background-color:gainsboro;
            border: 5px black;
            color: black;
            padding: 5px 28px;
            text-align: center;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<center>
    <div class="title">
        <h2>LOGIN FORM</h2>
    </div></center>
<div id="main">

    <form name="login" action="decide.php" method="post">
        <fieldset>
            <br>
            Username:
            <input type="text" name="username" required/><br><br>

            Password:&nbsp;
            <input type="password" name="password" required/><br><br>

            <input type="submit" value="Login" class="submit"/>
        </fieldset>
    </form>
</div>
</body>
</html>




