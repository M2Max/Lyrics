<?php

class Connection{
    const USER="admin";
    const PASS="admin";
    const HOST="localhost";
    const DB="lyrics";

    public static function doQuery($query){
        $conn=@mysqli_connect(self::HOST,self::USER, self::PASS, self::DB) or die( "Unable to select database");
        $result=mysqli_query($conn, $query);
        mysqli_close($conn);
        return $result;
    }
}
