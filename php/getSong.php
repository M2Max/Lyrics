<?php
    include "Connection.php";
    include "Song.php";

    $title  = $_POST["title"];
    $date   = $_POST["date"];

    $sql_query = "SELECT * FROM song s JOIN performance p ON s.ReleaseDate = p.SongReleaseDate AND s.Title = p.SongTitle WHERE s.Title LIKE '". $title ."' AND s.ReleaseDate LIKE '" . $date . "' ";
    $result = Connection::doQuery($sql_query);

    if (mysqli_num_rows($result) == 0) {
        echo 0;
        exit;
    }

    $songToShow = null;

    while ($row = mysqli_fetch_assoc($result)) {
        $song = new Song($row["Title"], $row["ReleaseDate"], $row["Language"], $row["userAdd"], $row["ArtistName"]);
        if(is_null($songToShow)) {
            $songToShow = Song::copyFrom($song);
            $songToShow->setText($row["Text"]);
        }else
            $songToShow->addArtist($row["ArtistName"]);
    }
    $string = "<div class='d-flex justify-content-center'>
                    <div class = 'flex-md-column'>
                        <h1 id = 'title' class = 'cormorant-bold'>" . $songToShow->getTitle() ."</h1> <br>";

    for ($i = 0; $i < count($songToShow->getArtist()); $i++){
        $string = $string . "<a href='#' class = 'artist-page yellow-highlight'><h2 class = 'cormorant yellow-highlight' style = 'display: inline-block;' id = '" . $songToShow->getArtist()[$i] . "'>" . $songToShow->getArtist()[$i];
        if ($i == count($songToShow->getArtist()) - 1){
            $string = $string . "</h2></a>";
        }else{
            $string = $string. ",</h2></a> &nbsp; ";
        }
    }

    $string = $string . "<br><p  id = 'text' class = 'cormorant-regular text-justify'>" . $songToShow->getText() . "</p> </div></div>";
    echo $string;

?>
