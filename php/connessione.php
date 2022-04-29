<?php

include "Connection.php";

$conn=@mysqli_connect("localhost","admin", "admin", "lyrics") or die( "Unable to select database");
$result = mysqli_query($conn, "SELECT COUNT(*) as cntUser from user u where u.username='user' and u.password = 'user'");
while($row = mysqli_fetch_array($result)) {
    print_r($row);
}

?>