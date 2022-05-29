<?php
    include "Connection.php";

    session_start();

    $title = $_POST["songTitle"];
    $language = $_POST["songLanguage"];
    $relDate = $_POST["songDate"];
    $artist = $_POST["songArtist"];
    $text = $_POST["songText"];

    $relDate=date("Y-m-d",strtotime($relDate));

    $sql_query = "select count(*) as cntSongs from song s where s.Title = '". $title ."' and s.ReleaseDate = '". $relDate ."'";
    $result = Connection::doQuery($sql_query);
    $row = mysqli_fetch_array($result);

    $count = $row['cntSongs'];

    if ($count > 0) {
        echo -1;
    }else {
        $text = str_replace("\n", "<br>", $text);
        $sql_query = "INSERT INTO `song` (`Title`, `ReleaseDate`, `Text`, `Language`, `userAdd`) VALUES ('$title', '$relDate', '$text', '$language', '". $_SESSION["username"] ."');";
        $result = Connection::doQuery($sql_query);

        if ($result === TRUE) {
            $flag = 1;
            foreach ($artist as &$item){
                echo $item;
                $sql_query = "INSERT INTO `performance` (`SongTitle`, `SongReleaseDate`, `ArtistName`) VALUES ('$title', '$relDate', '$item');";
                $result = Connection::doQuery($sql_query);
                if ($result === FALSE){
                    $flag = 0;
                }
            }
            echo $flag;
        }else
            echo 0;
    }

?>