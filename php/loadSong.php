<?php
include "Connection.php";

session_start();

$title = $_POST["songTitle"];
$language = $_POST["songLanguage"];
$relDate = $_POST["relDate"];
$artist = $_POST["songArtist"];

$sql_query = "select count(*) as cntSongs from song s where s.Title like ". $title ." and s.ReleaseDate = ". $relDate ." and ";
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