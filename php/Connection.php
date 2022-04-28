<?php

class Connection{
    const USER="root";
    const PASS="";
    const HOST="localhost";
    const DB="lyrics";

    public static function doQuery($query){
        $conn=@mysqli_connect(self::HOST,self::USER, self::PASS, self::DB) or die( "Unable to select database");
        $result=mysqli_query($conn, mysqli_real_escape_string($conn,$query));
        mysqli_close($conn);
        return $result;
    }
}
