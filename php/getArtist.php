<?php

    include "Connection.php";
    include "Song.php";

    $name           = $_POST["name"];
//
//    $sql_query = "SELECT a.Nationality FROM artist a WHERE a.Name LIKE '". $name ."'";
//    $result = Connection::doQuery($sql_query);
//
//    if (mysqli_num_rows($result) == 0) {
//        echo 0;
//        exit;
//    }
//
//    $nation            = mysqli_fetch_assoc($result);
//    $nationality    = $nation["Nationality"];

    $song_array     = null;

    $sql_query      = "SELECT s.Title, s.Language, s.ReleaseDate, s.userAdd FROM song s JOIN performance p on s.ReleaseDate = p.SongReleaseDate and s.Title = p.SongTitle WHERE p.ArtistName LIKE '" . $name . "'";
    $result         = Connection::doQuery($sql_query);

    if (mysqli_num_rows($result) == 0) {
        echo 1;
        exit;
    }

    while ($row = mysqli_fetch_assoc($result)) {
        $song = new Song($row["Title"], $row["ReleaseDate"], $row["Language"], $row["userAdd"], $name);
        if (is_null($song_array))
            $song_array = array();
        $song_array[] = $song;
    }

    $string = "<div class='container' id='main'>
                    <div class='row' id = 'content'>
                        <div class='col-sm-8' id='detail'>
                            <h1 id=". $name ." class = 'cormorant-bold' style = 'font-size: 4rem'>". $name ."</h1>
                        </div>
                    </div>
                    <table class='table cormorant-regular'>
                    <thead>
                    <tr>
                        <td>Song Title</td>
                        <td>Language</td>
                        <td>Release Date</td>
                        <td>User</td>                   
                    </tr>
                    </thead>
                    <tbody>";
    foreach($song_array as &$item){
        $string = $string . "<tr>
                                <td><a href = '#' class = 'song-lyrics yellow-highlight' id ='". $item->getTitle() . "?" . $item->getDate() ."'>". $item->getTitle() ."</a></td>
                                <td>". $item->getLanguage() ."</td> 
                                <td>". $item->getDate() ."</td>
                                <td>". $item->getUseradd() ."</td>
                            </tr>";
    }


    $string = $string . "</tbody></table></div>";

    echo $string;



?>