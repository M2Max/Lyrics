<?php
    session_start();
    if (!isset($_SESSION['username'])) {
        header("Location: page/login.php");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lyrics</title>
</head>
<body>

</body>
</html>