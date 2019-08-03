<?php

require_once("config.php");

// Destroying All Sessions

if(session_destroy())
{
    // Redirecting To Home Page
    header("Location: index.php");
}

?>

