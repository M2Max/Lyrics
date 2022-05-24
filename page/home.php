<?php
    session_start();
    if (!isset($_SESSION['username'])) {
        header("Location: login.php");
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lyrics</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">

</head>
<body>
<div class="m-4">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a href="#" id="home" class="navbar-brand water_brush">Lyrics</a>
            <div class="container" style = "max-width: 60vw">
                <div class="row searchFilter" >
                    <div class="mx-auto col-sm-6" >
                        <div class="input-group" >
                            <input id="table_filter" type="text" class="form-control" style = "box-shadow: none;" aria-label="Text input with segmented button dropdown" placeholder = "Search through authors, song titles and texts" >
                            <button id="searchBtn" type="button" class="btn btn-secondary btn-search" style = "background-color: #f8f9fa; box-shadow: none; border: none;" ><img style = "width: 20px; height: 20px;" src="../resources/loupe.png"></button>
                        </div>
                    </div>
                </div>
            </div>
            <a href = "#" class = "navbar-brand cormorant" id = "add-song" style = "margin-right: 1vw;"><img style = "width: 2vw;" id = "add-song-image"></a>
            <a href = "#" class = "navbar-brand cormorant" id = "logout" style = "font-size: 2.2vw;"><img style = "width: 2vw;" id = "logout-image"><strong><?php echo $_SESSION["username"]; ?> </strong></a>
        </div>
    </nav>
</div>
<div id="content"></div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="../js/popper.js"></script>
<script src="../js/home.js"></script>
<script src="../js/showSong.js"></script>

</body>
</html>