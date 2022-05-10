<?php
    include "Connection.php";

    session_start();

    $username = $_POST["username"];
    $password = $_POST["password"];

    $sql_query = "select count(*) as cntUser from user u where u.username='".$username."'";
    $result = Connection::doQuery($sql_query);
    $row = mysqli_fetch_array($result);

    $count = $row['cntUser'];

    if ($count > 0) {
        echo -1;
    }else {
        $sql_query = "INSERT INTO `user` (`username`, `password`) VALUES ('" . $username . "', '" . $password . "')";
        $result = Connection::doQuery($sql_query);

        if ($result === TRUE) {
            $_SESSION['username'] = $username;
            echo 1;
        }else
            echo 0;
    }
?>