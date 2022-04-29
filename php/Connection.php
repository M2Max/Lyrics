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

    public static function console_log($output, $with_script_tags = true) {
            $js_code = 'console.log(' . json_encode($output, JSON_HEX_TAG) .
                ');';
            if ($with_script_tags) {
                $js_code = '<script>' . $js_code . '</script>';
            }
            echo $js_code;
    }

}
