<?php

    include "Connection.php";
    include "Song.php";

    $song_array = array();

    $search = $_POST["search"];

    $sql_query = "SELECT s.Title, s.ReleaseDate, s.Language, p.ArtistName, s.userAdd FROM song s JOIN performance p ON s.Title = p.SongTitle AND s.ReleaseDate = p.SongReleaseDate WHERE s.Title LIKE '%".$search."%' OR s.Text LIKE '%".$search."%' OR p.ArtistName LIKE '".$search."'";
    $result = Connection::doQuery($sql_query);

    if (mysqli_num_rows($result) == 0) {
        echo 0;
        exit;
    }

    while ($row = mysqli_fetch_assoc($result)) {
        $song = new Song($row["Title"], $row["ReleaseDate"], $row["Language"], $row["userAdd"], $row["ArtistName"]);
        if (count($song_array) !== 0) {
            foreach ($song_array as &$value) {
                if ($value->getTitle() == $song->getTitle() and $value->getDate() == $song->getDate()) {
                    echo $value->getTitle() . " " . print_r($value->getArtist());
                    echo "<br>";
                    echo $song->getTitle() . " " . print_r($value->getArtist());
                    echo "<br><br>";
                    foreach($value->getArtist() as &$item){
                        if(!in_array($item, $song->getArtist())) {
//                            echo $item;
//                            echo $row["ArtistName"];
                            $value->addArtist($row["ArtistName"]);
                        }
                    }
                } else {
                    $song_array[] = $song;
                }
//                print_r($song_array);
////                echo "<br>";
            }
        }else {
            $song_array[] = $song;
        }
    }

    $string = "<div class = 'card-columns'>";
    foreach($song_array as &$item){
        $artists = implode(', ', $item->getArtist());
        $string = $string . "
        <div class='card' style='width: 18rem; display: inline-block; margin-left: 5px;'>
            <div class='card-body'>
                <h5 class='card-title'>". $item->getTitle() ."</h5>
                <p class='card-text'>". $artists ."</p>
                <a href='#' class='btn btn-primary' style = 'background-color: #e3b04b; border: none;'>Lyrics</a>
            </div>
        </div>";
    }
    $string = $string . "</div>";

    echo $string;

?>