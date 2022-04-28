<?php

include "Connection.php";

$username = $_POST["username"];
$password = $_POST["password"];



if ($username != "" && $password != "") {

    $sql_query = "select count(*) as cntUser from user where username='" . $username . "' and password='" . $password . "'";
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