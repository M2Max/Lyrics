<?php
    session_start();
    if (!isset($_SESSION['username'])) {
        header("Location: page/login.php");
    }else{
        header("Location: page/home.php");
    }
?>