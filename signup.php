<?php

require_once("config.php");
require_once ("Nav-bar.php");

//Forms posted
if(!empty($_POST)) {
    $errors = array();

    $email = trim($_POST["email"]);
    $username = trim($_POST["username"]);
    $firstname = trim($_POST["firstname"]);
    $lastname = trim($_POST["lastname"]);
    $phno = trim($_POST["phno"]);
    $password = trim($_POST["password"]);
    $confirm_pass = trim($_POST["passwordc"]);


    if($username == "") {
        $errors[] = "enter valid username";
    }

    if($firstname == "") {
        $errors[] = "enter valid first name";
    }

    if($lastname == "")
    {
        $errors[] = "enter valid last name";
    }
    if($phno == "")
    {
        $errors[] = "enter valid mobile number";
    }


    if($password =="" && $confirm_pass =="") {
        $errors[] = "enter password";
    }
    else if($password != $confirm_pass) {
        $errors[] = "password do not match";
    }

    //End data validation
    if(count($errors) == 0) {
        $user = createNewUser($username, $firstname, $lastname,$phno, $email,$password);

        // print_r($user);
        if($user <> 1) {
            $errors[] = "registration error";
        }
    }
    if(count($errors) == 0) {
        $successes[] = "registration successful";
    }
}


?>
<head>
    <style>
        fieldset{
            color: #070303;
            font-family: "Arial";
            width: 450px;
            margin:50px auto
        }
        .rectangle {
            height: 30px;
            width: 400px;
            background-color: #555;
        }
        .register{
            background-color:gainsboro;
            border: 5px black;
            color: black;
            padding: 10px 28px;
            text-align: center;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<center>
    <div class="rectangle">
        <h2>SIGNUP FORM</h2>
    </div></center>
<form name="newUser" action="<?php $_SERVER["PHP_SELF"]; ?>" method="post">
    <fieldset>
        <br>
        User Name:&nbsp;
        <input type="text" name="username" required /><br><br>

        First Name:&nbsp;
        <input type="text" placeholder="Enter Name" name="firstname" required /><br><br>

        Last Name:&nbsp;
        <input type="text"placeholder="Enter Lastname" name="lastname" /><br><br>

        Contact No:&nbsp;
        <input type="text"placeholder="Enter phone number" name="phno" /><br><br>

        Password:&nbsp;&nbsp;
        <input type="password" name="password" required /><br><br>

        Confirm:&ensp;&nbsp;&ensp;&nbsp;
        <input type="password" name="passwordc" required /><br><br>

        Email: &emsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" placeholder="Enter Email" name="email" required>

        &nbsp;<br><br>
        <input type="submit" value="Register" class="register" onclick="alert('Account created Successfully!!!')"/>

    </fieldset>
</form>
</body>