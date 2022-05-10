<?php

    include "Connection.php";

    session_start();

    $username = $_POST["username"];
    $password = $_POST["password"];


    if ($username != "" && $password != "") {

        $sql_query = "select count(*) as cntUser from user u where u.username='".$username."' and u.password='".$password."'";
        //$sql_query = "SELECT COUNT(*) as cntUser from user u where u.username='user' and u.password = 'user'";
        $result = Connection::doQuery($sql_query);
        $row = mysqli_fetch_array($result);

        $count = $row['cntUser'];

        if ($count > 0) {
            $_SESSION['username'] = $username;
            echo 1;
        } else {
            echo 0;
        }

    }


?>