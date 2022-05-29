<?php
    include "Connection.php";

    session_start();

    $name = $_POST["artistName"];
    $nationality = $_POST["artistNationality"];

    $sql_query = "select count(*) as cntArtist from artist a where a.Name = '". $name ."'";
    $result = Connection::doQuery($sql_query);
    $row = mysqli_fetch_array($result);

    $count = $row['cntSongs'];

    if ($count > 0) {
        echo -1;
    }else {
        $sql_query = "INSERT INTO `artist` (`Name`, `Nationality`) VALUES ('".$name."', '".$nationality."')";
        $result = Connection::doQuery($sql_query);
        if ($result === TRUE) {
            echo 1;
        }else
            echo 0;
    }
?>
