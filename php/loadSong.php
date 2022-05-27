<?php
    include "Connection.php";

    session_start();

    $title = $_POST["songTitle"];
    $language = $_POST["songLanguage"];
    $relDate = $_POST["relDate"];
    $artist = $_POST["songArtist"];
    $text = $_POST["songText"];


    $sql_query = "select count(*) as cntSongs from song s where s.Title like ". $title ." and s.ReleaseDate = ". $relDate ." and ";
    $result = Connection::doQuery($sql_query);
    $row = mysqli_fetch_array($result);

    $count = $row['cntUser'];

    if ($count > 0) {
        echo -1;
    }else {
        $text = str_replace("\n", "<br>", $text);
        $sql_query = "INSERT INTO `song` (`Title`, `ReleaseDate`, `Text`, `Language`, `userAdd`) VALUES ('". $title ."', '". $relDate ."', '". $text ."', '". $language ."', '". $_SESSION["username"] ."');";
        $result = Connection::doQuery($sql_query);

        if ($result === TRUE) {
            $flag = TRUE;
            foreach ($artist as &$item){
                $sql_query = "INSERT INTO `performance` (`SongTitle`, `SongReleaseDate`, `ArtistName`) VALUES ('". $title ."', '". $relDate ."', '". $item ."');";
                $result = Connection::doQuery($sql_query);
                if ($result === FALSE){
                    $flag = FALSE;
                }
            }
            if ($flag === TRUE)
                echo 1;
            else
                echo 0;
        }else
            echo 0;
    }
?>