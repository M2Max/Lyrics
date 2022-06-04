<?php

    include "Connection.php";
    include "Song.php";

    $song_array = null;

    $search = $_POST["search"];

    $search = str_replace("'", "`", $search);
    $sql_query = "SELECT s.Title, s.ReleaseDate, s.Language, p.ArtistName, s.userAdd FROM song s JOIN performance p ON s.Title = p.SongTitle AND s.ReleaseDate = p.SongReleaseDate WHERE s.Title LIKE '%".$search."%' OR s.Text LIKE '%".$search."%' OR p.SongTitle IN (
                  SELECT s.Title FROM song s JOIN performance p ON s.Title = p.SongTitle WHERE p.ArtistName LIKE '%".$search."%'  )
                  GROUP BY  s.Title, s.ReleaseDate, s.Language, p.ArtistName, s.userAdd";
    $result = Connection::doQuery($sql_query);

    if (mysqli_num_rows($result) == 0) {
        echo 0;
        exit;
    }

    while ($row = mysqli_fetch_assoc($result)) {
        $flag = false;
        $song = new Song($row["Title"], $row["ReleaseDate"], $row["Language"], $row["userAdd"], $row["ArtistName"]);
        if(is_null($song_array)){
            $song_array = array();
            $song_array[] = $song;
        }else{
            foreach ($song_array as &$item){
                if ($item->getTitle() == $song->getTitle() && $item->getDate() == $song->getDate()){
                    $item->addArtist($row["ArtistName"]);
                    $flag = true;
                }
            }
            if (!$flag)
                $song_array[] = $song;
        }

    }

    $string = "<div class = 'card-columns'>";
    foreach($song_array as &$item){
        $artists = implode(', ', $item->getArtist());
        $string = $string . "
        <div class='card' id ='". $item->getTitle() . "?" . $item->getDate() ."' style='width: 18rem; display: inline-block; margin-left: 5px;  margin-top: 10px;'>
            <div class='card-body'>
                <h5 class='card-title'>". $item->getTitle() ."</h5>
                <p class='card-text'>". $artists ."</p>
                <button type='submit' class='btn btn-primary btn-song-lyrics yellow-button no-outline' id ='". $item->getTitle() . "?" . $item->getDate() ."' style = 'background-color: #e3b04b; border: none;'>Lyrics</input>
            </div>
        </div>";
    }
    $string = $string . "</div>";

    echo $string;

?>